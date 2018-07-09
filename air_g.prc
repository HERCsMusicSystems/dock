
import studio
import lunar
import phobos
import prcgtk
import setup

program air_g [
	BuildMidi mdi BuildAudio RemoveAudio
	BuildSequencers
	pizzcb pizzseq Zero
	stringcb One
]


[[BuildMidi] [midi mdi income_midi] [show "MIDI on default."] /]
[[BuildMidi] [midi mdi income_midi "/dev/snd/midiC3D0"] [show "MIDI on C3D0."] /]
[[BuildMidi] [show "MIDI Device not found."]]
;[[BuildAudio *reactor] [core *reactor 330 32000 1024 30 15] [show "USB Audio Device ready."]/]
;[[BuildAudio *reactor] [core *reactor 330 22050 2048] [show "Motherboard Audio Device ready."]/]
;[[BuildAudio *reactor] [core *reactor 330 22050 4096 0 -1] [show "Windows Audio Device ready."]/]
;[[BuildAudio *reactor] [show "Audio device not found."] fail]
;[[BuildAudio] [BuildAudio reactor] [ConnectAllMoons reactor]]
;[[BuildAudio] [show "Build Audio failed."]]

[[RemoveAudio] [reactor []] [reactor] [show "Audio Device stopped."]/]
[[RemoveAudio] [show "Audio Device not present."]]




end := [
	[auto_atoms]
	[setup]
	[batch "air_g.prb"]
	[CommandCentre commander]
	[gtk_command]
	[TRY [RemoveAudio]]
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

