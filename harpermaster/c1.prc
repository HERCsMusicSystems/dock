
import setup
import alarm
import microdot

program c1 [c1_setup c1_close Microdot-0 compk]

[[ctrl : *command] [income_midi : *command]]

[[c1_setup]
	[BuildMicrodot]
	[audio_setup]
	[midi_setup]
  [Restore Microdot-0 "Microdot/skrzek_01.txt"]
  [small_keyboard compk computer_keyboard]
	[CommandCentre commander]
]
[[c1_close] [audio_close] [midi_close] [CloseAllMoons]]

end := [[c1_setup] [gtk_command] [c1_close]] .

