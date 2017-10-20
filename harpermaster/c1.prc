
import setup
import alarm
import abakos
import microdot

program c1 [c1_setup c1_close Abakos-0 Microdot-1 compk]

[[ctrl : *command] [income_midi : *command]]

[[c1_setup]
  [BuildAbakos 6]
	[BuildMicrodot]
	[audio_setup]
	[midi_setup]
  [Restore Abakos-0 "Abakos/skrzek_01.txt"]
  [Restore Microdot-1 "Microdot/skrzek_01.txt"]
  [small_keyboard compk hex_keyboard]
	[CommandCentre commander]
]
[[c1_close] [audio_close] [midi_close] [CloseAllMoons]]

end := [[c1_setup] [gtk_command] [c1_close]] .

