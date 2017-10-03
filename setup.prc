
import lunar

program setup [audio_setup midi_setup ctrl hctrl mdi1 mdi2 mdi3 setup close audio_close midi_close action programs program_data]

[[setup] [audio_setup] [midi_setup]]
[[close] [midi_close] [audio_close]]

[[audio_setup]
	[core : *interfaces] [eq [*outputs *] *interfaces]
	[SELECT
		[[AT 0 *index "USB Audio CODEC, USB Audio Default Audio Device" *outputs] [AUDIO_HARDWARE_SETTINGS [core 330 32000 2048 *index -1]]]
		[[AT 0 *index "Playback/recording through the PulseAudio sound server" *outputs] [AUDIO_HARDWARE_SETTINGS [core 330 22050 2048 *index -1]]]
		[[AT 0 *index "Primary Sound Driver" *outputs] [AUDIO_HARDWARE_SETTINGS [core 330 22050 2048 *index -1]]]
		[]
	]
	[AUDIO_HARDWARE_SETTINGS : *settings] [show *settings]
]

[[audio_setup]
	[core : *interfaces] [eq [*outputs *] *interfaces] [LENGTH *outputs *number_of_outputs] [show *number_of_outputs]
	[SELECT
		[[< 31 *number_of_outputs 50] [AUDIO_HARDWARE_SETTINGS [core 330 32000 2048 30 -1]]]
		[[< 10 *number_of_outputs 32] [AUDIO_HARDWARE_SETTINGS [core 330 22050 2048 0 -1]]]
		[[< 3 *number_of_outputs 6] [AUDIO_HARDWARE_SETTINGS [core 330 32000 2048 0 -1]]]
		[[< *number_of_outputs 4] [AUDIO_HARDWARE_SETTINGS [core 330 44100 4096 0 -1]]]
	]
]

[[audio_close] [TRY [reactor]]]
[[midi_close] [TRY [mdi1]] [TRY [mdi2]] [TRY [mdi3]]]

[[midi_setup]
	[TRY [midi mdi1 ctrl]]
	[TRY [midi mdi1 "/dev/snd/midiC3D0" ctrl]]
	[TRY [midi mdi2 "/dev/snd/midiC3D0" ctrl]]
	[TRY [midi mdi2 "/dev/snd/midiC4D0" ctrl]]
	[TRY [midi mdi1 "Keystation 88" ctrl]]
	[TRY [midi mdi2 "MIDIIN2 (Keystation 88)" ctrl]]
	[TRY [midi mdi3 "/dev/ttyACM0" hctrl]]
	[TRY [midicom mdi3 hctrl "COM3" 9600 8 0 0 1]]
]

[[hctrl programchange 0 *program] [programs *program *v] [action *program *v] [TRY [mdi3 control 0 *program *v]]]
[[hctrl : *command] [show *command]]

auto := [[ARRAY program_data 128]]

[[programs *ind *program]
	[program_data *ind : *v]
	[SELECT
		[[= *v 127] [= *program 0]]
		[[= *program 127]]
	]
	[program_data *ind *program]
]

private [program_data]

end.

