#(set-default-paper-size "a3")

\paper {
  left-margin = 3\cm
}

\score {<<
  \new PianoStaff <<
    \new Staff \include "b1_rimm_1.txt"
    \new Staff \include "b2_rimm_1.txt"
  >>
  \new StaffGroup <<
    \new RhythmicStaff \with {instrumentName = "Rimm 1" shortInstrumentName = "Rimm 1"}
    \include "b1_rimm_1.txt"
    \new RhythmicStaff \with {instrumentName = "Rimm 2" shortInstrumentName = "Rimm 2"}
    \include "b1_rimm_2.txt"
    \new RhythmicStaff \with {instrumentName = "Rimm 3" shortInstrumentName = "Rimm 3"}
    \include "b1_rimm_3.txt"
    \new RhythmicStaff \with {instrumentName = "Gran Cassa" shortInstrumentName = "G.C."}
    \include "b1_gc.txt"
  >>
>>}
