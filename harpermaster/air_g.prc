
import studio
import lunar
import phobos
import prcgtk

program air_g [
	BuildMidi mdi BuildAudio RemoveAudio
	BuildSequencers
	pizzcb pizzseq Zero
	stringcb One
]


[[BuildMidi] [midi mdi income_midi] [show "MIDI on default."] /]
[[BuildMidi] [midi mdi income_midi "/dev/snd/midiC3D0"] [show "MIDI on C3D0."] /]
[[BuildMidi] [show "MIDI Device not found."]]
[[BuildAudio *reactor] [core *reactor 330 32000 1024 30 15] [show "USB Audio Device ready."]/]
[[BuildAudio *reactor] [core *reactor 330 22050 2048] [show "Motherboard Audio Device ready."]/]
[[BuildAudio *reactor] [core *reactor 330 22050 4096 0 -1] [show "Windows Audio Device ready."]/]
[[BuildAudio *reactor] [show "Audio device not found."] fail]
[[BuildAudio] [BuildAudio reactor] [ConnectAllMoons reactor]]
[[BuildAudio] [show "Build Audio failed."]]

[[RemoveAudio] [reactor []] [reactor] [show "Audio Device stopped."]/]
[[RemoveAudio] [show "Audio Device not present."]]


[[@ lunar . FUNCTION_KEY 1] [BuildAudio]]
[[@ lunar . FUNCTION_KEY 2] [RemoveAudio]]
[[@ lunar . FUNCTION_KEY 5] [pizzseq "trigger" 128]]
[[@ lunar . FUNCTION_KEY 6] [pizzseq "trigger" 0]]

[[BuildSequencers]
	[sequencer pizzseq pizzcb]
	[pizzseq [
		; Pierwsza zwrotka
		[keyon 50 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 43 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 44 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 42 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 39 100] 12 keyoff 12
		[keyon 51 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 40 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 38 100] 12 keyoff 12
		[keyon 37 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 50 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 57 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 45 100] 10 keyoff 2
		[keyon 47 100] 10 keyoff 2
		[keyon 49 100] 10 keyoff 2
		[keyon 50 100] 10 keyoff 2
		[keyon 52 100] 10 keyoff 2
		[keyon 55 100] 10 keyoff 2
		[keyon 54 100] 10 keyoff 2
		[keyon 52 100] 10 keyoff 2
;	]]
;	[pizzseq "speed" 80]
;]
;[[BuildSequencers]
;	[pizzseq [
		; Druga zwrotka
		[keyon 50 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 43 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 44 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 42 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 39 100] 12 keyoff 12
		[keyon 51 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 40 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 38 100] 12 keyoff 12
		[keyon 37 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 50 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 57 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 84
		; Trzecia zwrotka
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		[keyon 42 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 39 100] 12 keyoff 12
		[keyon 51 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 64 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 49 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 46 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 46 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 47 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 44 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 42 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 38 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 37 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 42 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		[keyon 44 100] 12 keyoff 12
		[keyon 56 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 46 100] 12 keyoff 12
		[keyon 58 100] 12 keyoff 12
		[keyon 59 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 52 100] 12 keyoff 12
		[keyon 64 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 49 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 61 100] 12 keyoff 12
		[keyon 62 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 48 100] 12 keyoff 12
		[keyon 60 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 59 100] 12 keyoff 12
		[keyon 47 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 43 100] 12 keyoff 12
		[keyon 42 100] 12 keyoff 12
		[keyon 54 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 52 100] 12 keyoff 12
		[keyon 40 100] 12 keyoff 12
		[keyon 38 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 49 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 50 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		;;;;;;;;;;;;;;;;;;;;;;;;
		[keyon 57 100] 12 keyoff 12
		[keyon 55 100] 12 keyoff 12
		[keyon 57 100] 12 keyoff 12
		[keyon 45 100] 12 keyoff 12
		[keyon 38 100] 12 keyoff 84
	]]
	[pizzseq "speed" 80]
]

end := [
	[BuildPhobos 3 Zero pizzcb *]
	[Restore Zero "Phobos/air_pizz.txt"]
	[BuildSequencers]
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

