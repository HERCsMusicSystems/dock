#(set-default-paper-size "a3")

\paper {
  left-margin = 3\cm
}

\score {<<
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Flute" shortInstrumentName = "Flute"}
    \include "b1_blanks.txt"
    \new Staff \with {instrumentName = "Oboe" shortInstrumentName = "Oboe"}
    \include "b1_blanks.txt"
    \new Staff \with {instrumentName = "Clarinet" shortInstrumentName = "Clarinet"}
    \include "b1_blanks.txt"
    \new Staff \with {instrumentName = "Bassoon" shortInstrumentName = "Bassoon"}
    \include "b1_blanks.txt"
  >>
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Horn" shortInstrumentName = "Horn"}
    \include "b1_blanks.txt"
    \new Staff \with {instrumentName = "Trumpet" shortInstrumentName = "Trumpet"}
    \include "b1_blanks.txt"
    \new Staff \with {instrumentName = "Trombone" shortInstrumentName = "Trombone"}
    \include "b1_blanks.txt"
  >>
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Wood" shortInstrumentName = "Wood"} \include "b1_wood.txt"
    \new Staff \with {instrumentName = "Brass" shortInstrumentName = "Brass"} \include "b1_brass.txt"
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
    \new GrandStaff <<
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin I"}
      \include "b1_violin1.txt"
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin II"}
      \include "b1_violin2.txt"
    >>
    \new Staff \with {instrumentName = "Viola" shortInstrumentName = "Viola"}
    \include "b1_viola.txt"
    \new Staff \with {instrumentName = "Cello" shortInstrumentName = "Cello"}
    \include "b1_cello.txt"
    \new Staff \with {instrumentName = "Bass" shortInstrumentName = "Bass"}
    \include "b1_bass.txt"
  >>
>>}
