#(set-default-paper-size "a3")

\paper {
  left-margin = 3\cm
}

\score {<<

  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin I"}
      \include "a1_violin1.txt"
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin II"}
      \include "a1_violin2.txt"
    >>
    \new Staff \with {instrumentName = "Viola" shortInstrumentName = "Viola"}
    \include "a1_viola.txt"
    \new Staff \with {instrumentName = "Cello" shortInstrumentName = "Cello"}
    \include "a1_cello.txt"
    \new Staff \with {instrumentName = "Bass" shortInstrumentName = "Bass"}
    \include "b1_bass.txt"
  >>
>>}

