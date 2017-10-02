
import setup
import alarm
import microdot

program c1 [c1_setup c1_close]

[[ctrl : *command] [income_midi : *command]]

[[c1_setup]
	[BuildMicrodot]
	[audio_setup]
	[midi_setup]
	[CommandCentre commander]
]
[[c1_close] [audio_close] [midi_close] [CloseAllMoons]]

end := [[c1_setup] [gtk_command] [c1_close]] .

