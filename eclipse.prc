import studio
import lunar

import abakos
import forman
import vonforman
import arduino

program eclipse [mdi mda hctrl aa ma]

[[ma : *command] [show *command] [income_midi : *command]]

[[aa]
    [ard hctrl midi_monitor] [wait 1000] [ard_setup hctrl 0]
    [Moons *vf 0 : *] [BuildFM4Panel * *vf vco]
]

end := [
	[core : *interfaces] [eq [*outputs *] *interfaces] [LENGTH *outputs *number_of_outputs]
	[SELECT
		[[< 10 *number_of_outputs 30] [AUDIO_HARDWARE_SETTINGS [330 22050 2048 0 1]]]
		[[< 3 *number_of_outputs 6] [AUDIO_HARDWARE_SETTINGS [330 32000 2048 0 -1]]]
		[[< *number_of_outputs 4] [AUDIO_HARDWARE_SETTINGS [330 22050 4096 0 -1]]]
	]
	[TRY [midi mdi "Keystation 88" income_midi]]
	[TRY [midi mda "MIDIIN2 (Keystation 88)" midi_monitor]]
	[TRY [wait 100] [ard hctrl income_midi] [wait 1000] [ard_setup hctrl 0]]
	;[AUDIO_HARDWARE_SETTINGS [330 32000 2048 1 -1]]
	;[BuildVonForman 6 *vf : *]
	[BuildForman 6 *vf : *]
	[TRY [BuildFM4Panel * *vf vco]]
	[big_spectroscope *radar] [*radar 600 400]
	[CommandCentre commander]
	[ConnectAllMoons *radar]
	[gtk_command]
	[TRY [reactor]]
	[CloseAllMoons]
	[TRY [commander]]
	[TRY [mdi]]
	[TRY [hctrl]]
	[TRY [*radar]]
] .
