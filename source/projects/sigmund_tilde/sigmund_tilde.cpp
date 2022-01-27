

/* Copyright (c) 2005 Miller Puckette.  BSD licensed.  No warranties. */

/*
    fix parameter settings
    not to report pitch if evidence too scanty?
    note-on detection triggered by falling envelope (a posteriori)
    reentrancy bug setting loud flag (other parameters too?)
    tweaked freqs still not stable enough
    implement block ("-b") mode
*/

/* From here to the first "#ifdef PD" or "#ifdef Max" should be extractable
and usable in other contexts.  The one external requirement is a real
single-precision FFT, invoked as in the Mayer one: */


/* trying to make a painless update to maxmsp 64 bit, june 2015, vb */


#include "c74_msp.h"

using namespace c74::max;

static t_class* sigmund_class = nullptr;

typedef double t_samplearg;


void mayer_realfft(int npoints, t_sample *buf);

/* this routine is passed a buffer of npoints values, and returns the
N/2+1 real parts of the DFT (frequency zero through Nyquist), followed
by the N/2-1 imaginary points, in order of decreasing frequency.  Pd 0.41,
for example, defines this in the file d_fft_mayer.c or d_fft_fftsg.c. */

#include <math.h>
#include <stdio.h>
#include <string.h>
#ifdef _WIN32
#include <malloc.h>
#elif ! defined(_MSC_VER)
#include <alloca.h>
#endif
#include <stdlib.h>
#ifdef _MSC_VER
#pragma warning( disable : 4244 )
#pragma warning( disable : 4305 )
#endif

typedef struct peak
{
    t_sample p_freq;
    t_sample p_amp;
    t_sample p_ampreal;
    t_sample p_ampimag;
    t_sample p_pit;
    t_sample p_db;
    t_sample p_salience;
    t_sample p_tmp;
} t_peak;


/********************** service routines **************************/

/* these three are dapted from elsewhere in Pd but included here for
 cmolpeteness */
static int sigmund_ilog2(int n)
{
    int ret = -1;
    while (n)
    {
        n >>= 1;
        ret++;
    }
    return (ret);
}

static float sigmund_ftom(t_sample f)
{
    return (f > 0 ? 17.3123405046 * log(.12231220585 * f) : -1500);
}

#define LOGTEN 2.302585092994
static t_sample sigmund_powtodb(t_sample f)
{
    if (f <= 0) return (0);
    else
    {
        t_sample val = 100 + 10./LOGTEN * log(f);
        return (val < 0 ? 0 : val);
    }
}

/* parameters for von Hann window (change these to get Hamming if desired) */
#define W_ALPHA 0.5
#define W_BETA 0.5
#define NEGBINS 4   /* number of bins of negative frequency we'll need */

//#define PI 3.14159265
#define LOG2  0.693147180559945
#define LOG10 2.302585092994046

static t_sample sinx(t_sample theta, t_sample sintheta)
{
    if (theta > -0.003 && theta < 0.003)
        return (1);
    else return (sintheta/theta);
}

static t_sample window_hann_mag(t_sample pidetune, t_sample sinpidetune)
{
    return (W_ALPHA * sinx(pidetune, sinpidetune)
            - 0.5 * W_BETA *
            (sinx(pidetune+PI, sinpidetune) + sinx(pidetune-PI, sinpidetune)));
}

static t_sample window_mag(t_sample pidetune, t_sample cospidetune)
{
    return (sinx(pidetune + (PI/2), cospidetune)
            + sinx(pidetune - (PI/2), -cospidetune));
}

/*********** Routines to analyze a window into sinusoidal peaks *************/

static int sigmund_cmp_freq(const void *p1, const void *p2)
{
    if ((*(t_peak **)p1)->p_freq > (*(t_peak **)p2)->p_freq)
        return (1);
    else if ((*(t_peak **)p1)->p_freq < (*(t_peak **)p2)->p_freq)
        return (-1);
    else return (0);
}

static void sigmund_tweak(int npts, t_sample *ftreal, t_sample *ftimag,
                          int npeak, t_peak *peaks, t_sample fperbin, int loud)
{
    t_peak **peakptrs = (t_peak **)alloca(sizeof (*peakptrs) * (npeak+1));
    t_peak negpeak;
    int peaki, j, k;
    float ampreal[3], ampimag[3];
    float binperf = 1./fperbin;
    float phaseperbin = (npts-0.5)/npts, oneovern = 1./npts;
    if (npeak < 1)
        return;
    for (peaki = 0; peaki < npeak; peaki++)
        peakptrs[peaki+1] = &peaks[peaki];
    qsort(peakptrs+1, npeak, sizeof (*peakptrs), sigmund_cmp_freq);
    peakptrs[0] = &negpeak;
    negpeak.p_ampreal = peakptrs[1]->p_ampreal;
    negpeak.p_ampimag = -peakptrs[1]->p_ampimag;
    negpeak.p_freq = -peakptrs[1]->p_freq;
    for (peaki = 1; peaki <= npeak; peaki++)
    {
        int cbin = peakptrs[peaki]->p_freq*binperf + 0.5;
        int nsub = (peaki == npeak ? 1:2);
        t_sample windreal, windimag, windpower, detune, pidetune, sinpidetune,
        cospidetune, ampcorrect, ampout, ampoutreal, ampoutimag, freqout;
        /* post("3 nsub %d amp %f freq %f", nsub,
         peakptrs[peaki]->p_amp, peakptrs[peaki]->p_freq); */
        if (cbin < 0 || cbin > 2*npts - 3)
            continue;
        for (j = 0; j < 3; j++)
            ampreal[j] = ftreal[cbin+2*j-2], ampimag[j] = ftimag[cbin+2*j-2];
        /* post("a %f %f", ampreal[1], ampimag[1]); */
        for (j = 0; j < nsub; j++)
        {
            t_peak *neighbor = peakptrs[(peaki-1) + 2*j];
            t_sample neighborreal = npts * neighbor->p_ampreal;
            t_sample neighborimag = npts * neighbor->p_ampimag;
            for (k = 0; k < 3; k++)
            {
                t_sample freqdiff = (0.5*PI) * ((cbin + 2*k-2)
                                                -binperf * neighbor->p_freq);
                t_sample sx = sinx(freqdiff, sin(freqdiff));
                t_sample phasere = cos(freqdiff * phaseperbin);
                t_sample phaseim = sin(freqdiff * phaseperbin);
                ampreal[k] -=
                sx * (phasere * neighborreal - phaseim * neighborimag);
                ampimag[k] -=
                sx * (phaseim * neighborreal + phasere * neighborimag);
            }
            /* post("b %f %f", ampreal[1], ampimag[1]); */
        }
        
        windreal = W_ALPHA * ampreal[1] -
        (0.5 * W_BETA) * (ampreal[0] + ampreal[2]);
        windimag = W_ALPHA * ampimag[1] -
        (0.5 * W_BETA) * (ampimag[0] + ampimag[2]);
        windpower = windreal * windreal + windimag * windimag;
        detune = (
                  W_BETA*(ampreal[0] - ampreal[2]) *
                  (2.0*W_ALPHA * ampreal[1] - W_BETA * (ampreal[0] + ampreal[2]))
                  +
                  W_BETA*(ampimag[0] - ampimag[2]) *
                  (2.0*W_ALPHA * ampimag[1] - W_BETA * (ampimag[0] + ampimag[2]))
                  ) / (4.0 * windpower);
        if (detune > 0.5)
            detune = 0.5;
        else if (detune < -0.5)
            detune = -0.5;
        /* if (loud > 0)
         post("tweak: windpower %f, bin %d, detune %f",
         windpower, cbin, detune); */
        pidetune = PI * detune;
        sinpidetune = sin(pidetune);
        cospidetune = cos(pidetune);
        
        ampcorrect = 1.0 / window_hann_mag(pidetune, sinpidetune);
        
        ampout = oneovern * ampcorrect *sqrt(windpower);
        ampoutreal = oneovern * ampcorrect *
        (windreal * cospidetune - windimag * sinpidetune);
        ampoutimag = oneovern * ampcorrect *
        (windreal * sinpidetune + windimag * cospidetune);
        freqout = (cbin + 2*detune) * fperbin;
        /* if (loud > 1)
         post("amp %f, freq %f", ampout, freqout); */
        
        peakptrs[peaki]->p_freq = freqout;
        peakptrs[peaki]->p_amp = ampout;
        peakptrs[peaki]->p_ampreal = ampoutreal;
        peakptrs[peaki]->p_ampimag = ampoutimag;
    }
}

static void sigmund_remask(int maxbin, int bestindex, t_sample powmask,
                           t_sample maxpower, t_sample *maskbuf)
{
    int bin;
    int bin1 = (bestindex > 52 ? bestindex-50:2);
    int bin2 = (maxbin < bestindex + 50 ? bestindex + 50 : maxbin);
    for (bin = bin1; bin < bin2; bin++)
    {
        t_sample bindiff = bin - bestindex;
        t_sample mymask;
        mymask = powmask/ (1. + bindiff * bindiff * bindiff * bindiff);
        if (bindiff < 2 && bindiff > -2)
            mymask = 2*maxpower;
        if (mymask > maskbuf[bin])
            maskbuf[bin] = mymask;
    }
}

#define PEAKMASKFACTOR 1.
#define PEAKTHRESHFACTOR 0.6


// GET RAW PEAKS -------------

static void sigmund_getrawpeaks(int npts, t_sample *insamps,
                                int npeak, t_peak *peakv, int *nfound, t_sample *power, t_sample srate, int loud,
                                t_sample hifreq)
{
    t_sample oneovern = 1.0/ (t_sample)npts;
    t_sample fperbin = 0.5 * srate * oneovern;
    t_sample totalpower = 0;
    int npts2 = 2*npts, i, bin;
    int peakcount = 0;
    t_sample *fp1, *fp2;
    t_sample *rawreal, *rawimag, *maskbuf, *powbuf;
    t_sample *bigbuf = (t_sample*)alloca(sizeof (t_sample ) * (2*NEGBINS + 6*npts));
    int maxbin = hifreq/fperbin;
    if (maxbin > npts - NEGBINS)
        maxbin = npts - NEGBINS;
    /* if (loud) post("tweak %d", tweak); */
    maskbuf = bigbuf + npts2;
    powbuf = maskbuf + npts;
    rawreal = powbuf + npts+NEGBINS;
    rawimag = rawreal+npts+NEGBINS;
    for (i = 0; i < npts; i++)
        maskbuf[i] = 0;
    
    for (i = 0; i < npts; i++)
        bigbuf[i] = insamps[i];
    for (i = npts; i < 2*npts; i++)
        bigbuf[i] = 0;
    mayer_realfft(npts2, bigbuf);
    for (i = 0; i < npts; i++)
        rawreal[i] = bigbuf[i];
    for (i = 1; i < npts-1; i++)
        rawimag[i] = bigbuf[npts2-i];
    rawreal[-1] = rawreal[1];
    rawreal[-2] = rawreal[2];
    rawreal[-3] = rawreal[3];
    rawreal[-4] = rawreal[4];
    rawimag[0] = rawimag[npts-1] = 0;
    rawimag[-1] = -rawimag[1];
    rawimag[-2] = -rawimag[2];
    rawimag[-3] = -rawimag[3];
    rawimag[-4] = -rawimag[4];
#if 1
    for (i = 0, fp1 = rawreal, fp2 = rawimag; i < maxbin; i++, fp1++, fp2++)
    {
        t_sample x1 = fp1[1] - fp1[-1], x2 = fp2[1] - fp2[-1];
        t_sample p = powbuf[i] = x1*x1+x2*x2;
        if(i >= 2) totalpower += p;
    }
    //powbuf[npts-1] = 0;
    powbuf[maxbin] = powbuf[maxbin+1] = 0;
    *power = 0.5 * totalpower *oneovern * oneovern;
#endif
    for (peakcount = 0; peakcount < npeak; peakcount++)
    {
        t_sample pow1, maxpower = 0, windreal, windimag, windpower,
        detune, pidetune, sinpidetune, cospidetune, ampcorrect, ampout,
        ampoutreal, ampoutimag, freqout, powmask;
        int bestindex = -1;
        
        for (bin = 2, fp1 = rawreal+2, fp2 = rawimag+2;
             bin < maxbin; bin++, fp1++, fp2++)
        {
            pow1 = powbuf[bin];
            if (pow1 > maxpower && pow1 > maskbuf[bin])
            {
                t_sample thresh = PEAKTHRESHFACTOR * (powbuf[bin-2]+powbuf[bin+2]);
                if (pow1 > thresh)
                    maxpower = pow1, bestindex = bin;
            }
            //totalpower += pow1;
        }
        
        if (totalpower <= 0 || maxpower < 1e-10*totalpower || bestindex < 0)
            break;
        fp1 = rawreal+bestindex;
        fp2 = rawimag+bestindex;
        //*power = 0.5 * totalpower *oneovern * oneovern;
        powmask = maxpower * PEAKMASKFACTOR;
        /* if (loud > 2)
         post("maxpower %f, powmask %f, param1 %f",
         maxpower, powmask, param1); */
        sigmund_remask(maxbin, bestindex, powmask, maxpower, maskbuf);
        
        /* if (loud > 1)
         post("best index %d, total power %f", bestindex, totalpower); */
        
        windreal = fp1[1] - fp1[-1];
        windimag = fp2[1] - fp2[-1];
        windpower = windreal * windreal + windimag * windimag;
        detune = ((fp1[1] * fp1[1] - fp1[-1]*fp1[-1])
                  + (fp2[1] * fp2[1] - fp2[-1]*fp2[-1])) / (2 * windpower);
        
        if (detune > 0.5)
            detune = 0.5;
        else if (detune < -0.5)
            detune = -0.5;
        /* if (loud > 1)
         post("windpower %f, index %d, detune %f",
         windpower, bestindex, detune); */
        pidetune = PI * detune;
        sinpidetune = sin(pidetune);
        cospidetune = cos(pidetune);
        ampcorrect = 1.0 / window_mag(pidetune, cospidetune);
        
        ampout = ampcorrect *sqrt(windpower);
        ampoutreal = ampcorrect *
        (windreal * cospidetune - windimag * sinpidetune);
        ampoutimag = ampcorrect *
        (windreal * sinpidetune + windimag * cospidetune);
        
        /* the frequency is the sum of the bin frequency and detuning */
        
        peakv[peakcount].p_freq = (freqout = (bestindex + 2*detune)) * fperbin;
        peakv[peakcount].p_amp = oneovern * ampout;
        peakv[peakcount].p_ampreal = oneovern * ampoutreal;
        peakv[peakcount].p_ampimag = oneovern * ampoutimag;
    }
    // TODO: wieso tweak zweimal?
    sigmund_tweak(npts, rawreal, rawimag, peakcount, peakv, fperbin, loud);
    sigmund_tweak(npts, rawreal, rawimag, peakcount, peakv, fperbin, loud);
    
    for (i = 0; i < peakcount; i++)
    {
        peakv[i].p_pit = sigmund_ftom(peakv[i].p_freq);
        peakv[i].p_db = sigmund_powtodb(peakv[i].p_amp);
    }
    *nfound = peakcount;
}

/*************** Routines for finding fundamental pitch *************/

#define PITCHNPEAK 12
#define PITCHUNCERTAINTY 0.3
#define HALFTONEINC 0.059
#define SUBHARMONICS 16
#define DBPERHALFTONE 0.0

static void sigmund_getpitch(int npeak, t_peak *peakv, t_sample *freqp,
                             t_sample npts, t_sample srate, t_sample nharmonics, t_sample amppower, int loud)
{
    t_sample fperbin = 0.5 * srate / npts;
    int npit = 48 * sigmund_ilog2(npts), i, j, k, nsalient;
    t_sample bestbin, bestweight, sumamp, sumweight, sumfreq, freq;
    t_sample *weights =  (t_sample *)alloca(sizeof(t_sample) * npit);
    t_peak *bigpeaks[PITCHNPEAK];
    
    if (npeak < 1)
    {
        freq = 0;
        goto done;
    }
    
    for (i = 0; i < npit; i++)
        weights[i] = 0;
    for (i = 0; i < npeak; i++)
    {
        peakv[i].p_tmp = 0;
        peakv[i].p_salience = peakv[i].p_db - DBPERHALFTONE * peakv[i].p_pit;
    }
    for (nsalient = 0; nsalient < PITCHNPEAK; nsalient++)
    {
        t_peak *bestpeak = 0;
        t_sample bestsalience = -1e20;
        for (j = 0; j < npeak; j++)
            if (peakv[j].p_tmp == 0 && peakv[j].p_salience > bestsalience)
            {
                bestsalience = peakv[j].p_salience;
                bestpeak = &peakv[j];
            }
        if (!bestpeak)
            break;
        bigpeaks[nsalient] = bestpeak;
        bestpeak->p_tmp = 1;
        //post("peak f=%f a=%f", bestpeak->p_freq, bestpeak->p_amp);    // OK
    }
    sumweight = 0;
    for (i = 0; i < nsalient; i++)
    {
        t_peak *thispeak = bigpeaks[i];
        t_sample weightindex = (48./LOG2) *
        log(thispeak->p_freq/(2.*fperbin));
        t_sample loudness = pow(thispeak->p_amp, amppower);
        /* post("index %f, uncertainty %f", weightindex, pitchuncertainty); */
        
        for (j = 0; j < SUBHARMONICS; j++)
        {
            t_sample subindex = weightindex -
            (48./LOG2) * log(j + 1.);
            int loindex = subindex - 0.5;
            int hiindex = loindex+2;
            if (hiindex < 0)
                break;
            if (hiindex >= npit)
                continue;
            if (loindex < 0)
                loindex = 0;
            for (k = loindex; k <= hiindex; k++)
                weights[k] += loudness * nharmonics / (nharmonics + j);
        }
        sumweight += loudness;
    }
    bestbin = -1;
    bestweight = -1e20;
    for (i = 0; i < npit; i++)
        if (weights[i] > bestweight)
            bestweight = weights[i], bestbin = i;
    
    if (bestweight < sumweight * 0.4)
        bestbin = -1;
    
    if (bestbin < 0)
    {
        freq = 0;
        goto done;
    }
    if (bestbin > 0 && bestbin < npit-1)
    {
        int ibest = bestbin;
        bestbin += (weights[ibest+1] - weights[ibest-1]) /
        (weights[ibest+1] +  weights[ibest] + weights[ibest-1]);
    }
    freq = 2*fperbin * exp((LOG2/48.)*bestbin);
    for (sumamp = sumweight = sumfreq = 0, i = 0; i < nsalient; i++)
    {
        t_peak *thispeak = bigpeaks[i];
        t_sample thisloudness = thispeak->p_amp;
        t_sample thisfreq = thispeak->p_freq;
        t_sample harmonic = thisfreq/freq;
        t_sample intpart = (int)(0.5 + harmonic);
        t_sample inharm = harmonic - intpart;
#if 0
        if (loud)
            object_post((t_object*)x, "freq %f intpart %f inharm %f", freq, intpart, inharm);
#endif
        if (intpart >= 1 && intpart <= 16 &&
            inharm < 0.015 * intpart && inharm > - (0.015 * intpart))
        {
            t_sample weight = thisloudness * intpart;
            sumweight += weight;
            sumfreq += weight*thisfreq/intpart;
#if 0
            if (loud)
                object_post((t_object*)x, "weight %f freq %f", weight, thisfreq);
#endif
        }
    }
    if (sumweight > 0)
        freq = sumfreq / sumweight;
done:
    if (!(freq >= 0 || freq <= 0))
    {
        //post("freq nan cancelled");
        freq = 0;
    }
    *freqp = freq;
}

/*************** gather peak lists into sinusoidal tracks *************/

static void sigmund_peaktrack(int ninpeak, t_peak *inpeakv,
                              int noutpeak, t_peak *outpeakv, float maxerror, int loud)
{
    int incnt, outcnt;
    for (outcnt = 0; outcnt < noutpeak; outcnt++)
        outpeakv[outcnt].p_tmp = -1;
    
    /* first pass. Match each "in" peak with the closest previous
     "out" peak, but no two to the same one. */
    for (incnt = 0; incnt < ninpeak; incnt++)
    {
        t_sample besterror = 1e20;
        int bestcnt = -1;
        inpeakv[incnt].p_tmp = -1;
        for (outcnt = 0; outcnt < noutpeak; outcnt++)
        {
            t_sample thiserror;
            if (outpeakv[outcnt].p_amp == 0)
                continue;
            thiserror = inpeakv[incnt].p_freq - outpeakv[outcnt].p_freq;
            if (thiserror < 0)
                thiserror = -thiserror;
            if (thiserror < besterror)
            {
                besterror = thiserror;
                bestcnt = outcnt;
            }
        }
        if (bestcnt >= 0 && besterror < maxerror && outpeakv[bestcnt].p_tmp < 0)
        {
            outpeakv[bestcnt] = inpeakv[incnt];
            inpeakv[incnt].p_tmp = 0;
            outpeakv[bestcnt].p_tmp = 0;
        }
    }
    /* second pass.  Unmatched "in" peaks assigned to free "out"
     peaks */
    for (incnt = 0; incnt < ninpeak; incnt++)
        if (inpeakv[incnt].p_tmp < 0)
        {
            for (outcnt = 0; outcnt < noutpeak; outcnt++)
                if (outpeakv[outcnt].p_tmp < 0)
                {
                    outpeakv[outcnt] = inpeakv[incnt];
                    inpeakv[incnt].p_tmp = 0;
                    outpeakv[outcnt].p_tmp = 1;
                    break;
                }
        }
    for (outcnt = 0; outcnt < noutpeak; outcnt++)
        if (outpeakv[outcnt].p_tmp == -1)
            outpeakv[outcnt].p_amp = 0;
}

/**************** parse continuous pitch into note starts ***************/

#define NHISTPOINT 100

typedef struct _histpoint
{
    t_sample h_freq;
    t_sample h_power;
} t_histpoint;

typedef struct _notefinder
{
    t_sample n_age;
    t_sample n_hifreq;
    t_sample n_lofreq;
    int n_peaked;
    t_histpoint n_hist[NHISTPOINT];
    int n_histphase;
} t_notefinder;


static void notefinder_init(t_notefinder *x)
{
    int i;
    x->n_peaked = x->n_age = 0;
    x->n_hifreq = x->n_lofreq = 0;
    x->n_histphase = 0;
    for (i = 0; i < NHISTPOINT; i++)
        x->n_hist[i].h_freq =x->n_hist[i].h_power = 0;
}

static void notefinder_doit(t_notefinder *x, t_sample freq, t_sample power,
                            t_sample *note, t_sample vibrato, int stableperiod, t_sample powerthresh,
                            t_sample growththresh, int loud)
{
    /* calculate frequency ratio between allowable vibrato extremes
     (equal to twice the vibrato deviation from center) */
    t_sample vibmultiple = exp((2*LOG2/12) * vibrato);
    int oldhistphase, i, k;
    if (stableperiod > NHISTPOINT - 1)
        stableperiod = NHISTPOINT - 1;
    else if (stableperiod < 1)
        stableperiod = 1;
    if (++x->n_histphase == NHISTPOINT)
        x->n_histphase = 0;
    x->n_hist[x->n_histphase].h_freq = freq;
    x->n_hist[x->n_histphase].h_power = power;
    x->n_age++;
    *note = 0;
#if 0
    if (loud)
    {
        object_post((t_object*)x, "stable %d, age %d, vibmultiple %f, powerthresh %f, hifreq %f",
             stableperiod, (int)x->n_age ,vibmultiple, powerthresh, x->n_hifreq);
        object_post((t_object*)x, "histfreq %f %f %f %f",
             x->n_hist[x->n_histphase].h_freq,
             x->n_hist[(x->n_histphase+NHISTPOINT-1)%NHISTPOINT].h_freq,
             x->n_hist[(x->n_histphase+NHISTPOINT-2)%NHISTPOINT].h_freq,
             x->n_hist[(x->n_histphase+NHISTPOINT-3)%NHISTPOINT].h_freq);
        object_post((t_object*)x, "power %f %f %f %f",
             x->n_hist[x->n_histphase].h_power,
             x->n_hist[(x->n_histphase+NHISTPOINT-1)%NHISTPOINT].h_power,
             x->n_hist[(x->n_histphase+NHISTPOINT-2)%NHISTPOINT].h_power,
             x->n_hist[(x->n_histphase+NHISTPOINT-3)%NHISTPOINT].h_power);
        for (i = 0, k = x->n_histphase; i < stableperiod; i++)
        {
            object_post((t_object*)x, "pit %5.1f  pow %f", sigmund_ftom(x->n_hist[k].h_freq),
                 x->n_hist[k].h_power);
            if (--k < 0)
                k = NHISTPOINT - 1;
        }
    }
#endif
    /* look for shorter notes than "stableperiod" in length.
     The amplitude must rise and then fall while the pitch holds
     steady. */
    if (x->n_hifreq <= 0 && x->n_age > stableperiod)
    {
        t_sample maxpow = 0, freqatmaxpow = 0,
        localhifreq = -1e20, locallofreq = 1e20;
        int startphase = x->n_histphase - stableperiod + 1;
        if (startphase < 0)
            startphase += NHISTPOINT;
        for (i = 0, k = startphase; i < stableperiod; i++)
        {
            if (x->n_hist[k].h_freq <= 0)
                break;
            if (x->n_hist[k].h_power > maxpow)
                maxpow = x->n_hist[k].h_power,
                freqatmaxpow = x->n_hist[k].h_freq;
            if (x->n_hist[k].h_freq > localhifreq)
                localhifreq = x->n_hist[k].h_freq;
            if (x->n_hist[k].h_freq < locallofreq)
                locallofreq = x->n_hist[k].h_freq;
            if (localhifreq > locallofreq * vibmultiple)
                break;
            if (maxpow > power * growththresh &&
                maxpow > x->n_hist[startphase].h_power * growththresh &&
                localhifreq < vibmultiple * locallofreq
                && freqatmaxpow > 0 && maxpow > powerthresh)
            {
                x->n_hifreq = x->n_lofreq = *note = freqatmaxpow;
                x->n_age = 0;
                x->n_peaked = 0;
                /* post("got short note"); */
                return;
            }
            if (++k >= NHISTPOINT)
                k = 0;
        }
        
    }
    if (x->n_hifreq > 0)
    {
        /* test if we're within "vibrato" range, and if so update range */
        if (freq * vibmultiple >= x->n_hifreq &&
            x->n_lofreq * vibmultiple >= freq)
        {
            if (freq > x->n_hifreq)
                x->n_hifreq = freq;
            if (freq < x->n_lofreq)
                x->n_lofreq = freq;
        }
        else if (x->n_hifreq > 0 && x->n_age > stableperiod)
        {
            /* if we've been out of range at least 1/2 the
             last "stableperiod+1" analyses, clear the note */
            int nbad = 0;
            for (i = 0, k = x->n_histphase; i < stableperiod + 1; i++)
            {
                if (--k < 0)
                    k = NHISTPOINT - 1;
                if (x->n_hist[k].h_freq * vibmultiple <= x->n_hifreq ||
                    x->n_lofreq * vibmultiple <= x->n_hist[k].h_freq)
                    nbad++;
            }
            if (2 * nbad >= stableperiod + 1)
            {
                x->n_hifreq = x->n_lofreq = 0;
                x->n_age = 0;
            }
        }
    }
    
    oldhistphase = x->n_histphase - stableperiod;
    if (oldhistphase < 0)
        oldhistphase += NHISTPOINT;
    
    /* look for envelope attacks */
    
    if (x->n_hifreq > 0 && x->n_peaked)
    {
        if (freq > 0 && power > powerthresh &&
            power > x->n_hist[oldhistphase].h_power *
            exp((LOG10*0.1)*growththresh))
        {
            /* clear it and fall through for new stable-note test */
            x->n_peaked = 0;
            x->n_hifreq = x->n_lofreq = 0;
            x->n_age = 0;
        }
    }
    else if (!x->n_peaked)
    {
        if (x->n_hist[oldhistphase].h_power > powerthresh &&
            x->n_hist[oldhistphase].h_power > power)
            x->n_peaked = 1;
    }
    
    /* test for a new note using a stability criterion. */
    
    if (freq >= 0 &&
        (x->n_hifreq <= 0 || freq > x->n_hifreq || freq < x->n_lofreq))
    {
        t_sample testfhi = freq, testflo = freq,
        maxpow = x->n_hist[x->n_histphase].h_freq;
        for (i = 0, k = x->n_histphase; i < stableperiod-1; i++)
        {
            if (--k < 0)
                k = NHISTPOINT - 1;
            if (x->n_hist[k].h_freq > testfhi)
                testfhi = x->n_hist[k].h_freq;
            if (x->n_hist[k].h_freq < testflo)
                testflo = x->n_hist[k].h_freq;
            if (x->n_hist[k].h_power > maxpow)
                maxpow = x->n_hist[k].h_power;
        }
#if 0
        if (loud)
            object_post((t_object*)x, "freq %.2g testfhi %.2g  testflo %.2g maxpow %.2g",
                 freq, testfhi, testflo, maxpow);
#endif
        if (testflo > 0 && testfhi <= vibmultiple * testflo
            && maxpow > powerthresh)
        {
            /* report new note */
            t_sample sumf = 0, sumw = 0, thisw;
            for (i = 0, k = x->n_histphase; i < stableperiod; i++)
            {
                thisw = x->n_hist[k].h_power;
                sumw += thisw;
                sumf += thisw*x->n_hist[k].h_freq;
                if (--k < 0)
                    k = NHISTPOINT - 1;
            }
            x->n_hifreq = x->n_lofreq = *note = (sumw > 0 ? sumf/sumw : 0);
#if 0
            /* debugging printout */
            for (i = 0; i < stableperiod; i++)
            {
                int k3 = x->n_histphase - i;
                if (k3 < 0)
                    k3 += NHISTPOINT;
                startpost("%5.1f ", sigmund_ftom(x->n_hist[k3].h_freq));
            }
            object_post((t_object*)x, "");
#endif
            x->n_age = 0;
            x->n_peaked = 0;
            return;
        }
    }
    *note = 0;
    return;
}


/**************** object structure for Pd and Max. *********************/ 

/* From here onward, the code is specific to eithr Pd, Max, or both.  If
neither "PD 'nor "MSP" is defined, none of this is compiled, so that the
whole file can be included in other, non-PD and non-Max projects.  */

//#if (defined(PD) || defined (MSP))

#define NHIST 100

#define MODE_STREAM 1
#define MODE_BLOCK 2        /* unimplemented */
#define MODE_TABLE 3

#define NPOINTS_DEF 1024
#define NPOINTS_MIN 128

#define HOP_DEF 512
#define NPEAK_DEF 20

#define VIBRATO_DEF 1
#define STABLETIME_DEF 50
#define MINPOWER_DEF 50
#define GROWTH_DEF 7

#define OUT_PITCH 0
#define OUT_ENV 1
#define OUT_NOTE 2
#define OUT_PEAKS 3
#define OUT_TRACKS 4
#define OUT_SMSPITCH 5
#define OUT_SMSNONPITCH 6

typedef struct _varout
{
    void *v_outlet;
    int v_what;
} t_varout;

typedef struct _sigmund
{

    t_pxobject x_obj;
    void *obex;
    void *x_clock;
    t_sample *x_inbuf2; /* extra input buffer to eat clock/DSP jitter */
    t_varout *x_varoutv;
    int x_nvarout;
    t_sample x_sr;         /* sample rate */
    int x_mode;         /* MODE_STREAM, etc. */
    int x_npts;         /* number of points in analysis window */
    int x_npeak;        /* number of peaks to find */
    int x_loud;         /* debug level */
    t_sample *x_inbuf;  /* input buffer */
    int x_infill;       /* number of points filled */
    int x_countdown;    /* countdown to start filling buffer */
    int x_hop;          /* samples between analyses */
    t_sample x_maxfreq;    /* highest-frequency peak to report */
    t_sample x_vibrato;    /* vibrato depth in half tones */
    t_sample x_stabletime; /* period of stability needed for note */
    t_sample x_growth;     /* growth to set off a new note */
    t_sample x_minpower;   /* minimum power, in DB, for a note */
    t_sample x_param1;     /* three parameters for temporary use */
    t_sample x_param2;
    t_sample x_param3;
    t_notefinder x_notefinder;  /* note parsing state */
    t_peak *x_trackv;           /* peak tracking state */
    int x_ntrack;               /* number of peaks tracked */
    unsigned int x_dopitch:1;   /* which things to calculate */
    unsigned int x_donote:1;
    unsigned int x_dotracks:1;
} t_sigmund;


static void sigmund_preinit(t_sigmund *x)
{
    x->x_npts = NPOINTS_DEF;
    x->x_param1 = 6;
    x->x_param2 = 0.6;
    x->x_param3 = 0;
    x->x_hop = HOP_DEF;
    x->x_mode = MODE_STREAM;
    x->x_npeak = NPEAK_DEF;
    x->x_vibrato = VIBRATO_DEF;
    x->x_stabletime = STABLETIME_DEF;
    x->x_growth = GROWTH_DEF;
    x->x_minpower = MINPOWER_DEF;
    x->x_maxfreq = 1000000;
    x->x_loud = 0;
    x->x_sr = 1;
    x->x_nvarout = 0;
    x->x_varoutv = (t_varout *)sysmem_newptr(0);
    x->x_trackv = 0;
    x->x_ntrack = 0;
    x->x_dopitch = x->x_donote = x->x_dotracks = 0;
    x->x_inbuf = 0;
    x->x_inbuf2 = 0;

}


static void sigmund_npts(t_sigmund *x, t_samplearg f)
{
    int nwas = x->x_npts, npts = f;
    /* check parameter ranges */
    if (npts < NPOINTS_MIN)
        object_post((t_object*)x, "sigmund~: minimum points %d", NPOINTS_MIN),
        npts = NPOINTS_MIN;
    if (npts != (1 << sigmund_ilog2(npts)))
        object_post((t_object*)x, "sigmund~: adjusting analysis size to %d points",
             (npts = (1 << sigmund_ilog2(npts))));
    if (npts != nwas)
        x->x_countdown = x->x_infill  = 0;
    if (x->x_mode == MODE_STREAM)
    {
        if (x->x_inbuf)
        {
//            x->x_inbuf = (t_sample *)t_resizebytes(x->x_inbuf,
//                                                   sizeof(*x->x_inbuf) * nwas, sizeof(*x->x_inbuf) * npts);
//            x->x_inbuf2 = (t_sample *)t_resizebytes(x->x_inbuf2,
//                                                    sizeof(*x->x_inbuf2) * nwas, sizeof(*x->x_inbuf2) * npts);
//
            x->x_inbuf = (t_sample *)sysmem_resizeptr(x->x_inbuf, sizeof(*x->x_inbuf) * npts);
            x->x_inbuf2 = (t_sample *)sysmem_resizeptr(x->x_inbuf2, sizeof(*x->x_inbuf2) * npts);

        }
        else
        {
            x->x_inbuf = (t_sample *)sysmem_newptr(sizeof(*x->x_inbuf) * npts);
            memset((char *)(x->x_inbuf), 0, sizeof(*x->x_inbuf) * npts);

            x->x_inbuf2 = (t_sample *)sysmem_newptr(sizeof(*x->x_inbuf2) * npts);
            memset((char *)(x->x_inbuf2), 0, sizeof(*x->x_inbuf2) * npts);

        }
    }
    else x->x_inbuf = 0;
    x->x_npts = npts;
}

static void sigmund_hop(t_sigmund *x, t_samplearg f)
{
    x->x_hop = f;
    /* check parameter ranges */
    if (x->x_hop != (1 << sigmund_ilog2(x->x_hop)))
        object_post((t_object*)x, "sigmund~: adjusting analysis size to %d points",
             (x->x_hop = (1 << sigmund_ilog2(x->x_hop))));
}

static void sigmund_npeak(t_sigmund *x, t_samplearg f)
{
    if (f < 1)
        f = 1;
    x->x_npeak = f;
}

static void sigmund_maxfreq(t_sigmund *x, t_samplearg f)
{
    x->x_maxfreq = f;
}

static void sigmund_vibrato(t_sigmund *x, t_samplearg f)
{
    if (f < 0)
        f = 0;
    x->x_vibrato = f;
}

static void sigmund_stabletime(t_sigmund *x, t_samplearg f)
{
    if (f < 0)
        f = 0;
    x->x_stabletime = f;
}

static void sigmund_growth(t_sigmund *x, t_samplearg f)
{
    if (f < 0)
        f = 0;
    x->x_growth = f;
}

static void sigmund_minpower(t_sigmund *x, t_samplearg f)
{
    if (f < 0)
        f = 0;
    x->x_minpower = f;
}

// DO THE WORK + OUTPUT -------

static void sigmund_doit(t_sigmund *x, int npts, t_sample *arraypoints,
                         int loud, float srate)
{
    t_peak *peakv = (t_peak *)alloca(sizeof(t_peak) * x->x_npeak);
    int nfound, i, cnt;
    t_sample freq = 0, power, note = 0;
    sigmund_getrawpeaks(npts, arraypoints, x->x_npeak, peakv,
                        &nfound, &power, srate, loud, x->x_maxfreq);
    if (x->x_dopitch)
        sigmund_getpitch(nfound, peakv, &freq, npts, srate,
                         x->x_param1, x->x_param2, loud);
    //post("from doit, freq: %f", freq);
    if (x->x_donote)
        notefinder_doit(&x->x_notefinder, freq, power, &note, x->x_vibrato,
                        1 + x->x_stabletime * 0.001f * x->x_sr / (t_sample)x->x_hop,
                        exp(LOG10*0.1*(x->x_minpower - 100)), x->x_growth, loud);
    if (x->x_dotracks)
        sigmund_peaktrack(nfound, peakv, x->x_ntrack, x->x_trackv,
                          2* srate / npts, loud);
    
    for (cnt = x->x_nvarout; cnt--;)
    {
        t_varout *v = &x->x_varoutv[cnt];
        switch (v->v_what)
        {
            case OUT_PITCH:
                outlet_float(v->v_outlet, sigmund_ftom(freq));
                break;
            case OUT_ENV:
                outlet_float(v->v_outlet, sigmund_powtodb(power));
                break;
            case OUT_NOTE:
                if (note > 0)
                    outlet_float(v->v_outlet, sigmund_ftom(note));
                break;
            case OUT_PEAKS:
                for (i = 0; i < nfound; i++)
                {
                    t_atom at[5];
                    // vb, updated old SETFLOAT definitions to the newer "atom_setfloat"
                    atom_setlong(at, i);    // vb, CHANGED to setlong. Max supports integers, and in this case it's useful to have
                    atom_setfloat(at+1, peakv[i].p_freq);
                    atom_setfloat(at+2, 2*peakv[i].p_amp);
                    atom_setfloat(at+3, 2*peakv[i].p_ampreal);
                    atom_setfloat(at+4, 2*peakv[i].p_ampimag);
                    outlet_list(v->v_outlet, 0, 5, at);
                    
                }
                break;
            case OUT_TRACKS:
                for (i = 0; i < x->x_ntrack; i++)
                {
                    t_atom at[4];
                    atom_setlong(at, i);    // vb, CHANGED to setlong. Max supports integers, and in this case it's useful to have
                    atom_setfloat(at+1, x->x_trackv[i].p_freq);
                    atom_setfloat(at+2, 2*x->x_trackv[i].p_amp);
                    atom_setfloat(at+3, x->x_trackv[i].p_tmp);
                    outlet_list(v->v_outlet, 0, 4, at);
                }
                break;
        }
    }
}



// vb, 64-bit dsp method
void sigmund_perform64(t_sigmund *x, t_object *dsp64, double **ins, long numins, 
					   double **outs, long numouts, long sampleframes, long flags, void *userparam);

void sigmund_dsp64(t_sigmund *x, t_object *dsp64, short *count, double samplerate, 
				   long maxvectorsize, long flags) {
    if (x->x_mode == MODE_STREAM) {
        if (x->x_hop % maxvectorsize)
            object_post((t_object*)x, "sigmund: adjusting hop size to %d",
                 (x->x_hop = maxvectorsize * (x->x_hop / maxvectorsize)));
		
//        object_method(dsp64, gensym("dsp_add64"), x, sigmund_perform64, 0, NULL);
        object_method_direct(void, (t_object*, t_object*, t_perfroutine64, long, void*),
                             dsp64, gensym("dsp_add64"), (t_object*)x, (t_perfroutine64)sigmund_perform64, 0, NULL);
        
        x->x_sr = samplerate;
        if(x->x_sr <=0) x->x_sr  = 44100.0;
    }
}


static void sigmund_print(t_sigmund *x)
{
    object_post((t_object*)x, "sigmund~ settings:");
    object_post((t_object*)x, "npts %d", (int)x->x_npts);
    object_post((t_object*)x, "hop %d", (int)x->x_hop);
    object_post((t_object*)x, "npeak %d", (int)x->x_npeak);
    object_post((t_object*)x, "maxfreq %g", x->x_maxfreq);
    object_post((t_object*)x, "vibrato %g", x->x_vibrato);
    object_post((t_object*)x, "stabletime %g", x->x_stabletime);
    object_post((t_object*)x, "growth %g", x->x_growth);
    object_post((t_object*)x, "minpower %g", x->x_minpower);
}



static void sigmund_free(t_sigmund *x)
{

	dsp_free((t_pxobject *)x);			// vb, we need to call dsp_free!

    if (x->x_inbuf)
    {
//        freebytes(x->x_inbuf, x->x_npts * sizeof(*x->x_inbuf));
        sysmem_freeptr(x->x_inbuf);
//        freebytes(x->x_inbuf2, x->x_npts * sizeof(*x->x_inbuf2));
        sysmem_freeptr(x->x_inbuf2);

    }
    if (x->x_trackv)
        sysmem_freeptr(x->x_trackv);
//        freebytes(x->x_trackv, x->x_ntrack * sizeof(*x->x_trackv));
//    clock_free(x->x_clock);
    freeobject((t_object *)x->x_clock);
}




/************************ Max/MSP glue **********************************/

//static void *sigmund_class;

/* Max/MSP has laxer sync between DSP and "tick"s - so in the perf routine we
keep a circular buffer that is rectified into inbuf only when the tick comes. */

static void sigmund_tick(t_sigmund *x)
{
    int i, j, npts = x->x_npts;
    if (!x->x_inbuf)
        return;
    for (i = x->x_infill, j = 0; i < npts; i++, j++)
        x->x_inbuf[j] = x->x_inbuf2[i];
    for (i = 0; j < npts; i++, j++)
        x->x_inbuf[j] = x->x_inbuf2[i];
    sigmund_doit(x, x->x_npts, x->x_inbuf, x->x_loud, x->x_sr);
    x->x_loud = 0;
}

// vb, 64 bit signal input version
void sigmund_perform64(t_sigmund *x, t_object *dsp64, double **ins, long numins, 
					   double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
	double *in = ins[0];
	int n = sampleframes, j;
    int infill = x->x_infill;
    t_sample *fp = x->x_inbuf2 + infill;
    
    if (x->x_obj.z_disabled) /* return if in muted MSP subpatch -Rd */
        return;
    
    if (infill < 0 || infill >= x->x_npts)
        infill = 0;
    /* for some reason this sometimes happens: */
    if (!x->x_inbuf2) {
        object_error((t_object*)x, "hey, no infub2! -- error!");
        return;
    }
    
    
    for (j = 0; j < n; j++)
    {
        //*fp++ = *in++;
        *fp++ = in[j];
        if (++infill == x->x_npts)
            infill = 0, fp = x->x_inbuf2;
    }
    x->x_infill = infill;
    if (x->x_countdown <= 0)
    {
        x->x_countdown = x->x_hop;
        clock_fdelay(x->x_clock, 0.0);
    }
    x->x_countdown -= n;
	return;
}

//static t_int *sigmund_perform(t_int *w)
//{
//    t_sigmund *x = (t_sigmund *)(w[1]);
//    float *in = (float *)(w[2]);
//    int n = (int)(w[3]), j;
//    int infill = x->x_infill;
//    t_sample *fp = x->x_inbuf2 + infill;
//
//    if (x->x_obj.z_disabled) /* return if in muted MSP subpatch -Rd */
//        return (w+4);
//
//    if (infill < 0 || infill >= x->x_npts)
//        infill = 0;
//        /* for some reason this sometimes happens: */
//    if (!x->x_inbuf2)
//        return (w+4);
//    for (j = 0; j < n; j++)
//    {
//         *fp++ = *in++;
//         if (++infill == x->x_npts)
//            infill = 0, fp = x->x_inbuf2;
//    }
//    x->x_infill = infill;
//    if (x->x_countdown <= 0)
//    {
//        x->x_countdown = x->x_hop;
//        clock_delay(x->x_clock, 0);
//    }
//    x->x_countdown -= n;
//    return (w+4);
//}

static void *sigmund_new(t_symbol *s, long ac, t_atom *av)
{
    t_sigmund *x;
    t_varout *g;
    int i, j;
    if (!(x = (t_sigmund *)object_alloc(sigmund_class)))
        return (0);
    sigmund_preinit(x);
    attr_args_process(x, ac, av);
    dsp_setup((t_pxobject *)x, 1);
//    object_obex_store(x, gensym("dumpout"), outlet_new(x, NULL));
    
    for (i = 0; i < ac; i++)
        if (av[i].a_type == A_SYM)
    {
//        char *s = av[i].a_w.w_sym->s_name;
        const char *s = atom_getsym(&av[i])->s_name;
        if (!strcmp(s, "pitch"))
        {
            int n2 = x->x_nvarout+1;
//            x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//                x->x_nvarout*sizeof(t_varout), n2*sizeof(t_varout));
            x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, n2*sizeof(t_varout));
            x->x_varoutv[x->x_nvarout].v_what = OUT_PITCH;
            x->x_nvarout = n2;
            x->x_dopitch = 1;
        }
        else if (!strcmp(s, "env"))
        {
            int n2 = x->x_nvarout+1;
//            x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//                x->x_nvarout*sizeof(t_varout), n2*sizeof(t_varout));
            x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, n2*sizeof(t_varout));
            x->x_varoutv[x->x_nvarout].v_what = OUT_ENV;
            x->x_nvarout = n2;
        }
        else if (!strcmp(s, "note") || !strcmp(s, "notes"))
        {
            int n2 = x->x_nvarout+1;
//            x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//                x->x_nvarout*sizeof(t_varout), n2*sizeof(t_varout));
            x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, n2*sizeof(t_varout));
            x->x_varoutv[x->x_nvarout].v_what = OUT_NOTE;
            x->x_nvarout = n2;
            x->x_dopitch = x->x_donote = 1;
        }
        else if (!strcmp(s, "peaks"))
        {
            int n2 = x->x_nvarout+1;
//            x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//                x->x_nvarout*sizeof(t_varout), n2*sizeof(t_varout));
            x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, n2*sizeof(t_varout));
            x->x_varoutv[x->x_nvarout].v_what = OUT_PEAKS;
            x->x_nvarout = n2;
        }
        else if (!strcmp(s, "tracks"))
        {
            int n2 = x->x_nvarout+1;
//            x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//                x->x_nvarout*sizeof(t_varout), n2*sizeof(t_varout));
            x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, n2*sizeof(t_varout));
            x->x_varoutv[x->x_nvarout].v_what = OUT_TRACKS;
            x->x_nvarout = n2;
            x->x_dotracks = 1;
        }
        else if (s[0] != '@')
            object_post((t_object*)x, "sigmund: ignoring unknown argument '%s'" ,s);
    }
    if (!x->x_nvarout)
    {
//        x->x_varoutv = (t_varout *)t_resizebytes(x->x_varoutv,
//            0, 2*sizeof(t_varout));
        x->x_varoutv = (t_varout *)sysmem_resizeptr(x->x_varoutv, 2*sizeof(t_varout));
        x->x_varoutv[0].v_what = OUT_PITCH;
        x->x_varoutv[1].v_what = OUT_ENV;
        x->x_nvarout = 2;
        x->x_dopitch = 1;
    }
    for (j = 0, g = x->x_varoutv + x->x_nvarout-1; j < x->x_nvarout; j++, g--)
        g->v_outlet = ((g->v_what == OUT_PITCH  || g->v_what == OUT_ENV ||
            g->v_what == OUT_NOTE) ?
                       outlet_new((t_object *)x, "float") : outlet_new((t_object *)x, "list"));
//    floatout((t_object *)x) : listout((t_object *)x));
    if (x->x_dotracks)
    {
        x->x_ntrack = x->x_npeak;
//        x->x_trackv = (t_peak *)getbytes(x->x_ntrack * sizeof(*x->x_trackv));
        x->x_trackv = (t_peak *)sysmem_newptr(x->x_ntrack * sizeof(*x->x_trackv));
    }
    x->x_clock = clock_new(x, (method)sigmund_tick);
    x->x_infill = 0;
    x->x_countdown = 0;
    sigmund_npts(x, x->x_npts);
    notefinder_init(&x->x_notefinder);
	
	
    return (x);
}


/* Attribute setters. */
void sigmund_npts_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_npts(x, atom_getfloat(av));
}

void sigmund_hop_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_hop(x, atom_getfloat(av));
}

void sigmund_npeak_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_npeak(x, atom_getfloat(av));
}

void sigmund_maxfreq_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_maxfreq(x, atom_getfloat(av));
}

void sigmund_vibrato_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_vibrato(x, atom_getfloat(av));
}

void sigmund_stabletime_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_stabletime(x, atom_getfloat(av));
}

void sigmund_growth_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_growth(x, atom_getfloat(av));
}

void sigmund_minpower_set(t_sigmund *x, void *attr, long ac, t_atom *av)
{
    if (ac && av)
        sigmund_minpower(x, atom_getfloat(av));
}

/* end attr setters */

void sigmund_assist(t_sigmund *x, void *b, long m, long a, char *s)
{
}

//int C74_EXPORT main(void)
void ext_main(void* r)
{       
	t_class *c;
	long attrflags = 0;
	t_symbol *sym_long = gensym("long"), *sym_float64 = gensym("float64");

	c = class_new("sigmund~", (method)sigmund_new,
		(method)sigmund_free, sizeof(t_sigmund), (method)0L, A_GIMME, 0);
    
	class_obexoffset_set(c, calcoffset(t_sigmund, obex));

    class_addattr(c, attr_offset_new("npts", sym_long, attrflags,
        (method)0L, (method)sigmund_npts_set,
            calcoffset(t_sigmund, x_npts)));
    class_addattr(c ,attr_offset_new("hop", sym_long, attrflags,
        (method)0L, (method)sigmund_hop_set,
            calcoffset(t_sigmund, x_hop)));
    class_addattr(c ,attr_offset_new("maxfreq", sym_float64, attrflags,
        (method)0L, (method)sigmund_maxfreq_set,
            calcoffset(t_sigmund, x_maxfreq)));
    class_addattr(c ,attr_offset_new("npeak", sym_long, attrflags,
        (method)0L, (method)sigmund_npeak_set,
            calcoffset(t_sigmund, x_npeak)));
    class_addattr(c ,attr_offset_new("vibrato", sym_float64, attrflags,
        (method)0L, (method)sigmund_vibrato_set,
            calcoffset(t_sigmund, x_vibrato)));
    class_addattr(c ,attr_offset_new("stabletime", sym_float64, attrflags,
        (method)0L, (method)sigmund_stabletime_set,
            calcoffset(t_sigmund, x_stabletime)));
    class_addattr(c ,attr_offset_new("growth", sym_float64, attrflags,
        (method)0L, (method)sigmund_growth_set,
            calcoffset(t_sigmund, x_growth)));
    class_addattr(c ,attr_offset_new("minpower", sym_float64, attrflags,
        (method)0L, (method)sigmund_minpower_set,
            calcoffset(t_sigmund, x_minpower)));

//    class_addmethod(c, (method)sigmund_dsp, "dsp", A_CANT, 0);
	class_addmethod(c, (method)sigmund_dsp64, "dsp64", A_CANT, 0);		// add a call to 64bit dsp routine
    class_addmethod(c, (method)sigmund_print, "print", 0);
    class_addmethod(c, (method)sigmund_print, "printnext", A_DEFFLOAT, 0);
	class_addmethod(c, (method)sigmund_assist, "assist", A_CANT, 0);
	
	class_addmethod(c, (method)object_obex_dumpout, "dumpout", A_CANT, 0);
//    class_addmethod(c, (method)object_obex_quickref, "quickref", A_CANT, 0);
	
	class_dspinit(c);

	class_register(CLASS_BOX, c);
	sigmund_class = c;


	object_post(NULL, "sigmund~ based on v0.07 -- 64bit version");
//    return (0);
}
