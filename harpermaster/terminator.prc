
import studio
import setup
import vonforman

program harpermaster/terminator
		[
			terminator_setup terminator_close
		]

[[terminator_setup]
	[setup]
	[prompt "TERMINATOR: "]
	[BuildVonForman 66 4]
	[oscilloscope radar] [ConnectAllMoons radar]
	[CommandCentre commander]
]

[[terminator_close]
	[TRY [radar]] [TRY [commander]]
	[close]
	[CloseAllMoons]
]

end := [[terminator_setup] [gtk_command] [terminator_close]] .

