
\score {
  <<
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Flute I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Flute II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Oboe I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Oboe II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Clarinet I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Clarinet II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Clarinet III" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Bassoon I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Bassoon II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Bassoon III" }
      \relative c' {\key g \major c'1 e}
    >>
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Horn I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Horn II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Horn III" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Horn IV" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Trumpet I" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Trumpet II" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Trombone" }
      \relative c' {\key g \major c'1 e}
    >>
    \new StaffGroup <<
      \new RhythmicStaff \with { instrumentName = "Percussion" }
      \relative c' {\key g \major c'1 e}
      \new Staff \with { instrumentName = "Timpani" }
      {\clef bass \relative c' {\key g \major c,1 e }}
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with { instrumentName = "Violin I" }
        \relative c' { \key g \major g'1 b }
        \new Staff \with { instrumentName = "Violin II" }
        \relative c' { \key g \major c1 e }
      >>
      \new Staff \with { instrumentName = "Viola" }
      {\clef alto \relative c' { \key g \major c1 e }}
      \new Staff \with { instrumentName = "Cello" }
      {\clef bass \relative c { \key g \major c4 d e f g1 }}
      \new Staff \with { instrumentName = "Double Bass" }
      {\clef "bass_8" \relative c { \key g \major c,4 d e f g1 }}
    >>
  >>
}
