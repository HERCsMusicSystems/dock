
import lunar
import arduino

program setup [audio_setup midi_setup ctrl mdi1 mdi2 mdi3 setup close audio_close midi_close]

[[setup] [audio_setup] [midi_setup]]
[[close] [midi_close] [audio_close]]

[[audio_setup]
	[core : *interfaces] [eq [*outputs *] *interfaces] [LENGTH *outputs *number_of_outputs]
	[SELECT
		[[< 29 *number_of_outputs 50] [AUDIO_HARDWARE_SETTINGS [core 330 32000 2048 30 -1]]]
		[[< 10 *number_of_outputs 30] [AUDIO_HARDWARE_SETTINGS [core 330 22050 2048 0 -1]]]
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
	[TRY [ard mdi3 ctrl]]
	[TRY [midi mdi3 "/dev/ttyACM0" ctrl]]
]

end.

