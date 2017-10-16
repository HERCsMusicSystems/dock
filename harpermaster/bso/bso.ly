#(set-default-paper-size "a3")

\paper {
  left-margin = 3\cm
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Flute I" }
      \include "flute_range.txt"
      \new Staff \with { instrumentName = "Flute II" }
      \include "flute_range.txt"
      \new Staff \with { instrumentName = "Oboe I" }
      \include "oboe_range.txt"
      \new Staff \with { instrumentName = "Oboe II" }
      \include "oboe_range.txt"
      \new Staff \with { instrumentName = "Clarinet I (real)" }
      \include "clarinet_range.txt"
      \new Staff \with { instrumentName = "Clarinet II (as written)" }
      \transpose c d {\include "clarinet_range.txt"}
      \new Staff \with { instrumentName = "Clarinet III" }
      \transpose c d {\include "clarinet_range.txt"}
      \new Staff \with { instrumentName = "Bassoon I" }
      \include "bassoon_range.txt"
      \new Staff \with { instrumentName = "Bassoon II" }
      \include "bassoon_range.txt"
      \new Staff \with { instrumentName = "Bassoon III" }
      \include "bassoon_range.txt"
    >>
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Horn I (real)" }
      \include "horn_range.txt"
      \new Staff \with { instrumentName = "Horn II (as written)" }
      \transpose c g {\include "horn_range.txt"}
      \new Staff \with { instrumentName = "Horn III" }
      \transpose c g {\include "horn_range.txt"}
      \new Staff \with { instrumentName = "Horn IV" }
      \transpose c g {\include "horn_range.txt"}
      \new Staff \with { instrumentName = "Trumpet I (real)" }
      \include "trumpet_range.txt"
      \new Staff \with { instrumentName = "Trumpet II" }
      \transpose bes c' {\include "trumpet_range.txt"}
      \new Staff \with { instrumentName = "Trombone" }
      \include "trombone_range.txt"
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
        \include "violing_range.txt"
      >>
      \new Staff \with { instrumentName = "Viola" }
      \include "viola_range.txt"
      \new Staff \with { instrumentName = "Cello" }
      \include "cello_range.txt"
      \new Staff \with { instrumentName = "Double Bass" }
      \include "bass_range.txt"
    >>
  >>
}
