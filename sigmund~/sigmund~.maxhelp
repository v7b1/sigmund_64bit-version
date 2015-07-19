{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 315.0, 44.0, 691.0, 546.0 ],
		"bglocked" : 0,
		"defrect" : [ 315.0, 44.0, 691.0, 546.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "version 0.05 by Miller Puckette\nMax/MSP port by Miller Puckette, Cort Lippe, Ted Apel\n64-bit version by Volker Böhm",
					"linecount" : 3,
					"fontsize" : 12.0,
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 292.0, 326.0, 48.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 69",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 73.0, 212.0, 79.0, 20.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"id" : "obj-22",
					"local" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 91.72728, 409.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"fontsize" : 11.595187,
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 50.72728, 415.0, 38.0, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"border" : 2,
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"patching_rect" : [ 43.72728, 404.0, 100.0, 55.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameters are set as creation arguments or messages:\nnpts - number of points in each analysis window (1024)\nhop - number of points between each analysis (512)\nnpeak - number of sinusoidal peaks (20)\nmaxfreq - maximum sinusoid frequency in Hz. (1000000)\nvibrato - depth of vibrato to expect in 1/2-tones (1)\nstabletime - time (msec) to wait to report notes (50)\nminpower - minimum power (dB) to report a pitch (50)\ngrowth - growth (dB) to report a new note (7)\n\nThe npts and hop parameters are in samples, and are powers of two. The example below specifies a huge hop of 4096 (to slow the output down) and to output \"pitch\" and \"env\". (Those are the default outputs.)",
					"linecount" : 14,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"numinlets" : 1,
					"patching_rect" : [ 321.818176, 90.090912, 325.090912, 200.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Possible outputs are specified as creation arguments: \npitch - output pitch continuously\nnotes - output pitch at the beginning of notes\nenv - output amplitude continuously\npeaks - output all sinusoidal peaks in order of amplitude\ntracks - output sinusoidal peaks organized into tracks",
					"linecount" : 6,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"numinlets" : 1,
					"patching_rect" : [ 3.818197, 90.090889, 316.363617, 89.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "sigmund~",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"id" : "obj-40",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 5.0, 485.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Sinusoidal analysis and pitch tracking",
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontsize" : 12.754705,
					"id" : "obj-41",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 33.0, 485.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bonus:",
					"fontsize" : 11.600006,
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 320.590912, 435.745453, 120.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p simple-analysis-resynthesis-using-tracks-output",
					"fontsize" : 11.600006,
					"id" : "obj-2",
					"numinlets" : 0,
					"patching_rect" : [ 319.590912, 453.745453, 277.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 345.0, 63.0, 661.0, 509.0 ],
						"bglocked" : 0,
						"defrect" : [ 345.0, 63.0, 661.0, 509.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Analysis and resynthesis using tracks output",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 26.0, 315.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"presentation_rect" : [ 0.0, 0.0, 168.0, 53.0 ],
									"id" : "obj-36",
									"numinlets" : 2,
									"patching_rect" : [ 115.0, 68.0, 168.0, 53.0 ],
									"offset" : 48,
									"range" : 24,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"id" : "obj-35",
									"numinlets" : 2,
									"patching_rect" : [ 390.0, 203.0, 42.0, 85.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 433.0, 203.0, 22.0, 85.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-1",
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 105.0, 80.0, 13.0 ],
									"numleds" : 20,
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"numoutlets" : 1,
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"outlettype" : [ "float" ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontsize" : 11.600006,
									"id" : "obj-5",
									"numinlets" : 2,
									"patching_rect" : [ 344.0, 285.0, 37.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"fontsize" : 11.600006,
									"id" : "obj-6",
									"numinlets" : 2,
									"patching_rect" : [ 296.0, 264.0, 87.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.600006,
									"id" : "obj-7",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 135.0, 126.0, 39.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "receive~ osc-voice",
									"fontsize" : 11.600006,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 390.0, 174.0, 123.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p osc-bank",
									"fontsize" : 11.600006,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 301.0, 82.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Lucida Grande",
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 307.0, 164.0, 579.0, 501.0 ],
										"bglocked" : 0,
										"defrect" : [ 307.0, 164.0, 579.0, 501.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"numinlets" : 1,
													"patching_rect" : [ 494.0, 104.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"patching_rect" : [ 463.0, 123.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"numinlets" : 1,
													"patching_rect" : [ 432.0, 142.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"numinlets" : 1,
													"patching_rect" : [ 401.0, 163.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"numinlets" : 1,
													"patching_rect" : [ 370.0, 182.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"numinlets" : 1,
													"patching_rect" : [ 339.0, 201.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 308.0, 220.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"numinlets" : 1,
													"patching_rect" : [ 277.0, 241.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"numinlets" : 1,
													"patching_rect" : [ 246.0, 260.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"numinlets" : 1,
													"patching_rect" : [ 215.0, 279.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "voice number, freq, amp, flag",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 39.0, 145.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"numinlets" : 1,
													"patching_rect" : [ 184.0, 298.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"numinlets" : 1,
													"patching_rect" : [ 153.0, 317.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"numinlets" : 1,
													"patching_rect" : [ 122.0, 336.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 357.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"numinlets" : 1,
													"patching_rect" : [ 60.0, 376.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-17",
													"numinlets" : 0,
													"patching_rect" : [ 29.0, 36.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p osc-voice",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 395.0, 61.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Lucida Grande",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 49.0, 59.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "send~ osc-voice",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 366.0, 85.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "11.",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"patching_rect" : [ 213.0, 155.0, 23.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"patching_rect" : [ 195.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 155.0, 17.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$3 $1 $2",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"patching_rect" : [ 123.0, 69.0, 52.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp always ramps",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.0, 274.0, 101.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"patching_rect" : [ 291.0, 200.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "next gliss time",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"patching_rect" : [ 222.0, 171.0, 39.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 284.0, 179.0, 72.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"patching_rect" : [ 213.0, 130.0, 32.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "1 = new track",
																	"fontsize" : 9.0,
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 96.0, 98.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0 = continuation of track",
																	"fontsize" : 9.0,
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"patching_rect" : [ 245.0, 84.0, 119.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "-1 = free track (empty)",
																	"fontsize" : 9.0,
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 72.0, 127.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"fontsize" : 9.0,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 263.0, 54.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route -1 0 1",
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.0, 96.0, 119.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-16",
																	"numinlets" : 0,
																	"patching_rect" : [ 123.0, 42.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 9.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 311.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 9.0,
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 336.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"patching_rect" : [ 151.0, 287.0, 38.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 318.0, 36.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 11.",
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"patching_rect" : [ 277.0, 295.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Lucida Grande",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mute output",
																	"linecount" : 2,
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 150.0, 34.0, 27.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "amp",
																	"fontsize" : 9.0,
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"patching_rect" : [ 353.0, 199.0, 30.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq, amp, flag",
																	"fontsize" : 9.0,
																	"id" : "obj-24",
																	"numinlets" : 1,
																	"patching_rect" : [ 146.0, 44.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "freq jumps for first \"0\" flag after a \"1\" flag, and then glisses thereafter",
																	"linecount" : 3,
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"patching_rect" : [ 21.0, 256.0, 128.0, 38.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 62.0, 511.0, 17.0 ],
													"numoutlets" : 17,
													"fontname" : "Lucida Grande",
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-19", 7 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 8 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 9 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 10 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 11 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 12 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 13 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 14 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 6 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 15 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mtof",
									"fontsize" : 11.600006,
									"id" : "obj-18",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 126.0, 42.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Lucida Grande",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-19",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 148.0, 64.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"fontsize" : 11.600006,
									"id" : "obj-20",
									"numinlets" : 2,
									"patching_rect" : [ 165.0, 170.0, 50.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 100",
									"fontsize" : 11.600006,
									"id" : "obj-21",
									"numinlets" : 2,
									"patching_rect" : [ 165.0, 191.0, 56.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"fontsize" : 11.600006,
									"id" : "obj-22",
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 227.0, 36.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~",
									"fontsize" : 11.600006,
									"id" : "obj-23",
									"numinlets" : 2,
									"patching_rect" : [ 165.0, 209.0, 55.0, 20.0 ],
									"numoutlets" : 2,
									"fontname" : "Lucida Grande",
									"outlettype" : [ "signal", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-24",
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 152.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~",
									"fontsize" : 11.600006,
									"id" : "obj-25",
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 170.0, 54.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 100",
									"fontsize" : 11.600006,
									"id" : "obj-26",
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 187.0, 56.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"fontsize" : 11.600006,
									"id" : "obj-27",
									"numinlets" : 2,
									"patching_rect" : [ 14.0, 227.0, 36.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~",
									"fontsize" : 11.600006,
									"id" : "obj-28",
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 205.0, 55.0, 20.0 ],
									"numoutlets" : 2,
									"fontname" : "Lucida Grande",
									"outlettype" : [ "signal", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-29",
									"numinlets" : 1,
									"patching_rect" : [ 31.0, 168.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1",
									"fontsize" : 11.600006,
									"id" : "obj-30",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 70.0, 52.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sigmund~ @npeak 16 tracks",
									"fontsize" : 11.600006,
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 273.0, 158.0, 20.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~",
									"fontsize" : 11.600006,
									"id" : "obj-32",
									"numinlets" : 2,
									"patching_rect" : [ 389.0, 303.0, 42.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Lucida Grande"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 305.5, 306.0, 385.0, 306.0, 385.0, 299.0, 398.5, 299.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p using-with-tables",
					"fontsize" : 11.600006,
					"id" : "obj-6",
					"numinlets" : 0,
					"patching_rect" : [ 319.590912, 408.745453, 123.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 54.0, 59.0, 592.0, 196.0 ],
						"bglocked" : 0,
						"defrect" : [ 54.0, 59.0, 592.0, 196.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sorry folks. Use the PD version for now because it is not implemented in Max/MSP.",
									"fontsize" : 11.600006,
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 56.0, 59.0, 502.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setting-parameters",
					"fontsize" : 11.600006,
					"id" : "obj-7",
					"numinlets" : 0,
					"patching_rect" : [ 319.590912, 386.745453, 134.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 593.0, 69.0, 440.0, 635.0 ],
						"bglocked" : 0,
						"defrect" : [ 593.0, 69.0, 440.0, 635.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"fontsize" : 11.600006,
									"id" : "obj-1",
									"numinlets" : 2,
									"patching_rect" : [ 113.0, 73.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.600006,
									"id" : "obj-2",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 126.0, 91.0, 37.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "minpower $1",
									"fontsize" : 11.600006,
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 126.0, 112.0, 87.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sigmund~ @minpower 40",
									"fontsize" : 11.600006,
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 113.0, 135.0, 143.0, 20.0 ],
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stabletime: time period to wait before reporting a note (affects \"notes\" output only). The \"pitch\" must be present and must not vary more than \"vibrato\" for this entire period to report a note. If too large, the \"notes\" will be unnecessarily delayed. If too small, spurious notes get output.",
									"linecount" : 4,
									"fontsize" : 11.600006,
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 419.0, 372.0, 60.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minpower: minimum measured RMS level to report a pitch (affects \"pitch\" and \"notes\" output only). Signals quieter than this will be assumed to be crosstalk and ignored.",
									"linecount" : 3,
									"fontsize" : 11.600006,
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 476.0, 316.0, 47.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "growth: minimum measured RMS growth to report a new note (affects \"notes\" output only). The RMS level must rise by this many dB (within a time period given by \"stabletime\") to report a repetition of a note at or near the previously output pitch.",
									"linecount" : 4,
									"fontsize" : 11.600006,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 521.0, 331.0, 60.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "npeak: maximum number of sinusoidal peaks to look for. The computation time is quadratic in the number of peaks actually found (this number only sets an upper limit). Use it to balance CPU time with quality of results.",
									"linecount" : 4,
									"fontsize" : 11.600006,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 257.0, 307.0, 60.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maxfreq: maximum frequency of sinusoidal peaks to look for. This can be useful in situations where background noise creates high-frequency, spurious peaks..",
									"linecount" : 3,
									"fontsize" : 11.600006,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 315.0, 304.0, 47.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "vibrato: maximum deviation from \"pitch\" to accept as normal vibrato (affects \"notes\" output only). If the value is too small. vibratos will appear as trills. If too large, very small melodic intervals may not be reported as new notes.",
									"linecount" : 4,
									"fontsize" : 11.600006,
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 361.0, 320.0, 60.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can set parameters either by creation arguments, or else using messages. The \"print\" message gives you the current values of all the parameters:",
									"linecount" : 3,
									"fontsize" : 11.600006,
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 29.0, 297.0, 47.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "npts: number of points used in an analysis. Must be a power of two, at least 128 The minimum frequency that can be tracked is about 2(sample_rate)/npts.",
									"linecount" : 3,
									"fontsize" : 11.600006,
									"id" : "obj-12",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 167.0, 294.0, 47.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hop: number of points between analyses. Must be a power of two, at least the DSP vector size (usually 64). This regulates the number of analyses done per unit of time.",
									"linecount" : 3,
									"fontsize" : 11.600006,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 212.0, 312.0, 47.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sinusoid-tracking",
					"fontsize" : 11.600006,
					"id" : "obj-8",
					"numinlets" : 0,
					"patching_rect" : [ 319.590912, 364.745453, 121.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 428.0, 53.0, 584.0, 606.0 ],
						"bglocked" : 0,
						"defrect" : [ 428.0, 53.0, 584.0, 606.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-43",
									"numinlets" : 1,
									"patching_rect" : [ 150.0, 388.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"varname" : "autohelp_dac",
									"id" : "obj-40",
									"local" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 420.727295, 533.0, 45.0, 45.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "autohelp_dac_text",
									"text" : "start audio",
									"linecount" : 2,
									"fontsize" : 11.595187,
									"id" : "obj-41",
									"numinlets" : 1,
									"patching_rect" : [ 379.727295, 539.0, 38.0, 33.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "startwinwdow_panel",
									"border" : 2,
									"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
									"id" : "obj-42",
									"numinlets" : 1,
									"patching_rect" : [ 372.727295, 528.0, 100.0, 55.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 440",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 83.0, 85.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-5",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 501.0, 95.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-6",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 129.0, 520.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-7",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 97.0, 540.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-8",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 68.0, 560.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0. 0.",
									"fontsize" : 11.600006,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 68.0, 474.0, 110.0, 20.0 ],
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 440",
									"fontsize" : 11.600006,
									"id" : "obj-10",
									"numinlets" : 2,
									"patching_rect" : [ 68.0, 388.0, 76.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"fontsize" : 11.600006,
									"id" : "obj-11",
									"numinlets" : 2,
									"patching_rect" : [ 14.0, 429.0, 38.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"fontsize" : 11.600006,
									"id" : "obj-12",
									"numinlets" : 2,
									"patching_rect" : [ 68.0, 414.0, 33.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sigmund~ @npts 4096 @hop 2048 @npeak 1 tracks",
									"fontsize" : 11.600006,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 68.0, 445.0, 281.0, 20.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you ask for \"tracks\", the output is four numbers: index, frequency, and amplitude as before, and finally a flag which is one for a new track, zero for a continuation, minus one for an empty track.",
									"linecount" : 2,
									"fontsize" : 11.600006,
									"id" : "obj-14",
									"numinlets" : 1,
									"patching_rect" : [ 6.0, 343.0, 518.0, 33.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-15",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 327.0, 232.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-16",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 297.0, 251.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-17",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 266.0, 271.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-18",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 291.0, 92.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0. 0.",
									"fontsize" : 11.600006,
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 208.0, 110.0, 20.0 ],
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-20",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 232.0, 81.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-21",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 251.0, 81.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-22",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 85.0, 271.0, 81.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.600006,
									"id" : "obj-23",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 291.0, 81.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0. 0.",
									"fontsize" : 11.600006,
									"id" : "obj-24",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 208.0, 110.0, 20.0 ],
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 3 4 5 6 7 8 9",
									"fontsize" : 11.600006,
									"id" : "obj-25",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 185.0, 293.0, 20.0 ],
									"numoutlets" : 11,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"fontsize" : 11.600006,
									"id" : "obj-27",
									"numinlets" : 2,
									"patching_rect" : [ 5.0, 132.0, 38.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "phasor~",
									"fontsize" : 11.600006,
									"id" : "obj-28",
									"numinlets" : 2,
									"patching_rect" : [ 55.0, 130.0, 58.0, 20.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.600006,
									"id" : "obj-29",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 107.0, 37.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sigmund~ @npeak 10 peaks",
									"fontsize" : 11.600006,
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 159.0, 158.0, 20.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can ask for sinusoidal peaks in decreasing order of amplitude or arranged into maximally continuous tracks for resynthesis. (Or you can ask for both.) If you ask for peaks, out come lists of five numbers, one for each sinusoid at each analysis period. The first is the index number of the sinusoid (so you can use \"route\" to claw them apart). The other four are as shown:",
									"linecount" : 4,
									"fontsize" : 11.600006,
									"id" : "obj-32",
									"numinlets" : 1,
									"patching_rect" : [ 4.0, 9.0, 500.0, 60.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sine component",
									"fontsize" : 11.600006,
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 420.0, 234.0, 126.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cosine component",
									"fontsize" : 11.600006,
									"id" : "obj-34",
									"numinlets" : 1,
									"patching_rect" : [ 391.0, 253.0, 127.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "peak amplitude (linear)",
									"fontsize" : 11.600006,
									"id" : "obj-35",
									"numinlets" : 1,
									"patching_rect" : [ 359.0, 272.0, 182.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frequency (Hz.)",
									"fontsize" : 11.600006,
									"id" : "obj-36",
									"numinlets" : 1,
									"patching_rect" : [ 329.0, 294.0, 127.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "quietest partial",
									"fontsize" : 11.600006,
									"id" : "obj-37",
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 316.0, 126.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loudest partial",
									"fontsize" : 11.600006,
									"id" : "obj-38",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 316.0, 126.0, 20.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 14.5, 156.0, 50.0, 156.0, 50.0, 156.0, 64.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 9 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "envelope",
					"fontsize" : 11.600006,
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 167.318176, 367.927277, 83.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.600006,
					"id" : "obj-10",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 166.318176, 348.927277, 72.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"fontsize" : 11.600006,
					"id" : "obj-12",
					"numinlets" : 2,
					"patching_rect" : [ 28.318184, 286.927277, 38.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.600006,
					"id" : "obj-13",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 73.318184, 348.927277, 72.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~",
					"fontsize" : 11.600006,
					"id" : "obj-14",
					"numinlets" : 2,
					"patching_rect" : [ 73.318184, 286.927277, 58.0, 20.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mtof",
					"fontsize" : 11.600006,
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 73.318184, 261.927277, 44.0, 20.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 11.600006,
					"id" : "obj-16",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 73.318184, 236.927277, 38.0, 20.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sigmund~ @hop 4096 pitch env",
					"fontsize" : 11.600006,
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 73.318184, 320.927277, 204.999985, 20.0 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "float", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sigmund~ analyzes an incoming sound into sinusoidal components, which may be reported individually or combined to form a pitch estimate. ",
					"linecount" : 2,
					"fontsize" : 11.600006,
					"id" : "obj-30",
					"numinlets" : 1,
					"patching_rect" : [ 4.498805, 55.54306, 487.909088, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"fontsize" : 11.600006,
					"id" : "obj-36",
					"numinlets" : 1,
					"patching_rect" : [ 73.318184, 367.927277, 79.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dummy outlet",
					"linecount" : 2,
					"fontsize" : 11.600006,
					"id" : "obj-37",
					"numinlets" : 1,
					"patching_rect" : [ 246.318176, 349.927277, 56.909092, 33.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "more details:",
					"fontsize" : 11.600006,
					"id" : "obj-38",
					"numinlets" : 1,
					"patching_rect" : [ 319.590912, 346.745453, 126.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[2]",
					"mode" : 1,
					"grad1" : [ 0.682353, 0.776471, 0.823529, 1.0 ],
					"id" : "obj-4",
					"background" : 1,
					"numinlets" : 1,
					"grad2" : [ 0.9, 0.9, 0.9, 1.0 ],
					"patching_rect" : [ 4.0, 5.0, 495.0, 52.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 37.818184, 316.0, 82.818184, 316.0 ]
				}

			}
 ]
	}

}
