#include "c74_msp.h"

using namespace c74::max;

static t_class* this_class = nullptr;


struct t_myObj {
	t_pxobject	obj;
};


void* myObj_new(void) {
	t_myObj* self = (t_myObj*)object_alloc(this_class);
	
	dsp_setup((t_pxobject*)self, 1);
	outlet_new(self, "signal");
	return self;
}


void myObj_free(t_myObj* self) {
	dsp_free((t_pxobject*)self);
}


void myObj_perform64(t_myObj* self, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
	for (auto i=0; i<sampleframes; ++i)
		outs[0][i] = std::sin(ins[0][i] * 2.0 * M_PI);
}


void sin_dsp64(t_myObj* self, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags) {
	object_method_direct(void, (t_object*, t_object*, t_perfroutine64, long, void*),
						 dsp64, gensym("dsp_add64"), (t_object*)self, (t_perfroutine64)myObj_perform64, 0, NULL);
}


void sin_assist(t_myObj* self, void* unused, t_assist_function io, long index, char* string_dest) {
	if (io == ASSIST_INLET) {
		switch (index) {
			case 0: 
				strncpy(string_dest,"(signal) Phase (0-1)", ASSIST_STRING_MAXSIZE); 
				break;
		}
	}
	else if (io == ASSIST_OUTLET) {
		switch (index) {
			case 0: 
				strncpy(string_dest,"(signal) Sine Output", ASSIST_STRING_MAXSIZE); 
				break;
		}
	}
}


void ext_main(void* r) {
	this_class = class_new("sigmund~", (method)myObj_new, (method)myObj_free, sizeof(t_myObj), 0, A_GIMME, 0);

	class_addmethod(this_class, (method)sin_assist,	"assist",	A_CANT,		0);
	class_addmethod(this_class, (method)sin_dsp64,	"dsp64",	A_CANT,		0);
	
	class_dspinit(this_class);
	class_register(CLASS_BOX, this_class);
}
