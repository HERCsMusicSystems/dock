#(set-default-paper-size "a3")

\paper {left-margin = 3\cm}

\score {<<
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Horns (real)"}
    \include "horn_tv.txt"
  >>
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Cello"}
    {\key c \major \clef "bass" \relative {s1 c,1}}
    \new Staff \with {instrumentName = "Double Bass"}
    {\key c \major \clef "bass_8" \relative {s1 c,,1}}
  >>
>>}
