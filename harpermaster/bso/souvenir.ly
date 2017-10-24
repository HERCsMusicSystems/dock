#(set-default-paper-size "a3")

\paper {left-margin = 3\cm}

\score {<<
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Horns (real)"}
    \include "horn_tv.txt"
    \new Staff \with {instrumentName = "Brass (real)" shortInstrumentName = "Brass"}
    \include "brass_tv.txt"
  >>
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Glockenspiel"}
    \include "glockenspiel_tv.txt"
  >>
  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff \with {instrumentName = "Violins I"}
      \include "violin1_tv.txt"
      \new Staff \with {instrumentName = "Violins II"}
      \include "violin2_tv.txt"
    >>
    \new Staff \with {instrumentName = "Violas"}
    \include "viola_tv.txt"
    \new Staff \with {instrumentName = "Cello"}
    \include "cello_tv.txt"
    \new Staff \with {instrumentName = "Double Bass"}
    \include "bass_tv.txt"
  >>
>>}
