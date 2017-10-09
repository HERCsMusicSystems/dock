#(set-default-paper-size "a3")

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Flute I" }
      \include "flute_range.txt"
      \new Staff \with { instrumentName = "Flute II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Oboe I" }
      \include "oboe_range.txt"
      \new Staff \with { instrumentName = "Oboe II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Clarinet I (real)" }
      \include "clarinet_range.txt"
      \new Staff \with { instrumentName = "Clarinet II" }
      \transpose c d {\include "clarinet_range.txt"}
      \new Staff \with { instrumentName = "Clarinet III" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Bassoon I" }
      \include "bassoon_range.txt"
      \new Staff \with { instrumentName = "Bassoon II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Bassoon III" }
      \relative c' {\key g \major c'1 e}
    >>
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Horn (real)" }
      \include "horn_range.txt"
      \new Staff \with { instrumentName = "Horn I" }
      \transpose c g {\include "horn_range.txt"}
      \new Staff \with { instrumentName = "Trumpet I (real)" }
      \include "trumpet_range.txt"
      \new Staff \with { instrumentName = "Trumpet II" }
      \transpose c d {\include "trumpet_range.txt"}
      \new Staff \with { instrumentName = "Trombone" }
      \relative c' {\key g \major c'1 e}
    >>
    \new StaffGroup <<
      \new RhythmicStaff \with { instrumentName = "Percussion" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Timpani" }
      \include "timpani_range.txt"
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with { instrumentName = "Violin I" }
        \include "violing_range.txt"
        \new Staff \with { instrumentName = "Violin II" }
        \relative c' { \key g \major c1 e }
      >>
      \new Staff \with { instrumentName = "Viola" }
      \include "viola_range.txt"
      \new Staff \with { instrumentName = "Cello" }
      {\clef bass \relative c { \key g \major c4 d e f g1 }}
      \new Staff \with { instrumentName = "Double Bass" }
      \include "bass_range.txt"
    >>
  >>
}
