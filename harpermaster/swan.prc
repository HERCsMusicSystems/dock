
import studio
import prcgtk
import lunar
import abakos
import phobos

program swan [setup Abakos-0 Abakos-1 Abakos-0-cb Abakos-1-cb right left setup_right setup_left programmer]

;[[setup]]
[[setup]
	[AUDIO_HARDWARE_SETTINGS [330 22050 2048 0 0]]
	;[BuildIntegratedAbakos Abakos-0 Abakos-0-cb 3]
	[BuildAbakos 4 Abakos-1 Abakos-1-cb *]
	[Abakos-1-cb control 73 32]
	[Abakos-1-cb control 72 32]
	[Lunar 1 Abakos-1 vco 1 wave]
	[list Moons]
	[setup_right]
	[CommandCentre commander]
	[commander 100 1000]
]


[[setup_left]
	[sequencer left Abakos-1-cb]
	[left [
	]]
]
[[setup_right]
	[sequencer right Abakos-1-cb]
	[right [
		; BAR 1 (INTRO)
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 2 (FIRST QUESTION)
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 3
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		; BAR 4 (FIRST ANSWER)
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		; BAR 5
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 6 (SECOND QUESTION)
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 7
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff
		; BAR 8 (SECOND ANSWER)
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A# 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A# 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A# 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [A# 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		; BAR 9
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		; BAR 10 (PRZETWORZENIE QUESTION 1)
		[keyon [D 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [C# 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C# 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 11
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		; BAR 12 (PRZETWORZENIE QUESTION 2)
		[keyon [C 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		; BAR 13
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [b 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [b 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		; BAR 14 (PRZETWORZENIE ANSWER 1)
		[keyon [A 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [H 0] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		; BAR 15
		[keyon [A 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		; BAR 16 (PRZETWORZENIE ANSWER 2)
		[keyon [A 0] 100] 6 keyoff [keyon [H 0] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [H 0] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [H 0] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C# 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C# 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		[keyon [A 0] 100] 6 keyoff [keyon [C# 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff
		; BAR 17
		[keyon [A 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff
		; BAR 18 (FIRST QUESTION)
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [B 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [B 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 19
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		; BAR 20 (FIRST ANSWER)
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		; BAR 21
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [F 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G# 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G# 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G# 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		; BAR 22 (ENDING)
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		[keyon [C 1] 100] 6 keyoff [keyon [F# 1] 100] 6 keyoff [keyon [C 2] 100] 6 keyoff [keyon [A 1] 100] 6 keyoff
		; BAR 23
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [A 0] 100] 3 [keyon [C 1] 100] 3 [keyon [G 1] 100] 3 3 6 6 keyoff 24 24
		; BAR 24
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [G 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff
		24 24 24
		; BAR 25
		[keyon [H 0] 100] 6 keyoff [keyon [E 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		[keyon [E 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [E 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [G 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff [keyon [E 2] 100] 6 keyoff
		[keyon [D 1] 100] 3 [keyon [A 1] 100] 3 [keyon [C 2] 100] 3 keyoff 3 6 6 24 24
		; BAR 25
		24
		[keyon [E 3] 100] 6 keyoff [keyon [G 3] 100] 6 keyoff [keyon [E 4] 100] 6 keyoff [keyon [H 3] 100] 6 keyoff
		[keyon [D 3] 100] 6 keyoff [keyon [G 3] 100] 6 keyoff [keyon [D 4] 100] 6 keyoff [keyon [H 3] 100] 6 keyoff
		[keyon [H 2] 100] 6 keyoff [keyon [E 3] 100] 6 keyoff [keyon [H 3] 100] 6 keyoff [keyon [G 3] 100] 6 keyoff
		[keyon [H 2] 100] 6 keyoff [keyon [D 3] 100] 6 keyoff [keyon [H 3] 100] 6 keyoff [keyon [G 3] 100] 6 keyoff
		[keyon [E 2] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff [keyon [E 3] 100] 6 keyoff [keyon [H 2] 100] 6 keyoff
		; BAR 26
		[keyon [D 2] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff [keyon [D 3] 100] 6 keyoff [keyon [H 2] 100] 6 keyoff
		[keyon [H 1] 100] 6 keyoff [keyon [E 2] 100] 6 keyoff [keyon [H 2] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff
		[keyon [H 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 2] 100] 6 keyoff [keyon [G 2] 100] 6 keyoff
		[keyon [E 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [E 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [D 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff [keyon [D 2] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff
		[keyon [H 0] 100] 6 keyoff [keyon [D 1] 100] 6 keyoff [keyon [H 1] 100] 6 keyoff [keyon [G 1] 100] 6 keyoff
		; BAR 27
		[keyon [H 0] 100] 6 6 keyoff 6 6
		24 24
		24 24 24
	]]
	[right "speed" 66]
]

[[programmer programchange * 0] [right "trigger" 1] [left "trigger" 1]]
[[programmer programchange * 1] [right "trigger" 0] [left "trigger" 0]]
[[programmer : *command] [income_midi : *command]]

[[FUNCTION_KEY 4] [CommanderHardwareAction]]
[[FUNCTION_KEY 5] [wait 1200] [right "trigger" 1]]
[[FUNCTION_KEY 6] [right "trigger" 0]]
[[FUNCTION_KEY 9] [right "clock" 1] [wait 100] [right "clock" 0]]
[[FUNCTION_KEY : *x] [show *x]]

end := [[setup] [show "setup completed"] [gtk_command] [CloseAllMoons]] .





















