
import studio
import setup
import vonforman
import doctor

program harpermaster/terminator
		[
			terminator_setup terminator_close trig seq seq1 seq2
		]

[[terminator_setup]
	[setup]
	[prompt "TERMINATOR: "]
	[BuildVonForman 66 4]
	;[wave *waves "harpermaster/t1.wav" "harpermaster/t2.wav" "harpermaster/t3.wav" "harpermaster/t4.wav"] [BuildDoctor 4 Doctor-1 *dcb * *waves]
	[BuildDoctor 6] [BuildDoctor 6]
	[Restore 1 "Doctor/terminator_3.txt"]
	[Restore 2 "Doctor/terminator_3.txt"]
	[income_midi control 1 10 0] [income_midi control 2 10 128]
	[multitrack seq [seq1 1] [seq2 2]]
		[seq1 [
			[keyon 64 100] 24 48
			[keyon 64 100] 24 48
			[keyon 64 100] 24 48
			[keyon 64 100] 48 48
		]]
		[seq2 [
			24 [keyon 64 60] 48
			24 [keyon 64 60] 48
			24 [keyon 64 60] 48
			48 [keyon 64 110] 48
		]]
	[seq "speed" 360]
	[oscilloscope radar] [ConnectAllMoons radar]
	[CommandCentre commander] [commander 600 1000]
]

[[terminator_close]
	[TRY [radar]] [TRY [commander]]
	[close]
	[CloseAllMoons]
]

[[FUNCTION_KEY 1] [seq "trigger" 256]]
[[FUNCTION_KEY 2] [seq "trigger" 0]]
[[FUNCTION_KEY : *x] [show *x]]

end := [[terminator_setup] [gtk_command] [terminator_close]] .

