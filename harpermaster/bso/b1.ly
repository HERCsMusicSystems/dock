#(set-default-paper-size "a3")

\paper {
  left-margin = 3\cm
}

\score {<<
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Wood"} \include "b1_wood.txt"
    \new Staff \with {instrumentName = "Brass"} \include "b1_brass.txt"
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
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Cello" shortInstrumentName = "Cello"}
    \include "b1_cello.txt"
    \new Staff \with {instrumentName = "Bass" shortInstrumentName = "Bass"}
    \include "b1_bass.txt"
  >>
>>}
