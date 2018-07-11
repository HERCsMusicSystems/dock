
import studio
import lunar
import phobos
import prcgtk
import setup

program air_g []





end := [
	[auto_atoms]
	[setup]
	[batch "air_g.prb"]
	[CommandCentre commander]
	[gtk_command]
	[TRY [close]]
	[CloseAllMoons]
].


end := [
	[BuildPhobos 2 Zero pizzcb *]
	[BuildPhobos 6 One stringcb *]
	[Restore Zero "Phobos/air_pizz.txt"]
	[Restore One "Phobos/penderecki4"]
	[BuildSequencers]
	[BuildMidi]
	[CommandCentre commander CCCB]
	[command]
	[TRY [commander]]
	[TRY [mdi]]
	[RemoveAudio]
	[CloseAllMoons]
] .

