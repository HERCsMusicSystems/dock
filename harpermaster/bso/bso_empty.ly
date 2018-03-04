#(set-default-paper-size "a3" 'landscape)

\paper {left-margin = 1\cm right-margin = 1\cm}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Flute" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Oboe" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Clarinet" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Bassoon" \omit TimeSignature }
      {\clef bass s1 s s s s}
    >>
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Horn" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Trumpet" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Trombone" \omit TimeSignature }
      {\clef bass s1 s s s s}
    >>
    \new StaffGroup <<
      \new RhythmicStaff \with { \omit TimeSignature }
      {s1 s s s s}
      \new RhythmicStaff \with { \omit TimeSignature }
      {s1 s s s s}
      \new RhythmicStaff \with { \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Timpani" \omit TimeSignature }
      {s1 s s s s}
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with { instrumentName = "Violin I" \omit TimeSignature }
      {s1 s s s s}
        \new Staff \with { instrumentName = "Violin II" \omit TimeSignature }
      {s1 s s s s}
      >>
      \new Staff \with { instrumentName = "Viola" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Cello" \omit TimeSignature }
      {s1 s s s s}
      \new Staff \with { instrumentName = "Bass" \omit TimeSignature }
      {s1 s s s s}
    >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
    }
  }
}
