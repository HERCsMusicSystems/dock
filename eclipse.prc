import studio
import lunar

import abakos
import forman
import vonforman
import doctor
import arduino

program eclipse [mdi mda aa ma k1 k2]

[[ma : *command] [show *command] [income_midi : *command]]

[[aa]
    [ard hctrl midi_monitor] [wait 1000] [ard_setup hctrl 0]
    [Moons *vf 0 : *] [BuildFM4Panel * *vf vco]
]

[[k1 : *command] [write "Keystation: "] [midi_monitor : *command]]
[[k2 : *command] [write "Transport:  "] [midi_monitor : *command]]

end := [
	[auto_atoms]
	[core : *interfaces] [eq [*outputs *] *interfaces] [LENGTH *outputs *number_of_outputs]
	[SELECT
		[[< 29 *number_of_outputs 50] [AUDIO_HARDWARE_SETTINGS [330 32000 2048 30 -1]]]
		[[< 10 *number_of_outputs 30] [AUDIO_HARDWARE_SETTINGS [330 22050 2048 0 -1]]]
		[[< 3 *number_of_outputs 6] [AUDIO_HARDWARE_SETTINGS [330 32000 2048 0 -1]]]
		[[< *number_of_outputs 4] [AUDIO_HARDWARE_SETTINGS [330 44100 4096 0 -1]]]
	]
	[TRY [midi mdi k1]]
	[TRY [midi mdi "/dev/snd/midiC3D0" k1]]
	[TRY [midi mda "/dev/snd/midiC3D0" k2]]
	[TRY [midi mda "/dev/snd/midiC4D0" k2]]
	[TRY [midi mdi "Keystation 88" k1]]
	[TRY [midi mda "MIDIIN2 (Keystation 88)" k2]]
	;[TRY [wait 100] [ard hctrl h1] [wait 1000] [ard_setup hctrl 0]]
	[TRY [ard hctrl hrcs_ctrl]]
	[TRY [midi hctrl "/dev/ttyACM0" hrcs_ctrl]]
	;[AUDIO_HARDWARE_SETTINGS [330 32000 2048 1 -1]]
	;[BuildVonForman 6 *vf : *]
	;[BuildForman 6 *vf : *]
	;[BuildDoctor 4]
	[batch "arpeggiateur.prb"]
	;[TRY [BuildFM4Panel * *vf vco]]
	;[big_spectroscope *radar 6] [*radar 600 400]
	;[CommandCentre commander]
	;[ConnectAllMoons *radar]
	[gtk_command]
	[TRY [reactor]]
	[CloseAllMoons]
	[TRY [commander]]
	[TRY [mdi]]
	[TRY [hctrl]]
	[TRY [*radar]]
] .
