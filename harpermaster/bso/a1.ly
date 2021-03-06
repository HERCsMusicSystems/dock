#(set-default-paper-size "a3" 'landscape)

\paper {
  left-margin = 3\cm
}

\score {<<
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Flute I" shortInstrumentName = "Flute I"}
      {\include "a1_flute_1.txt" \include "b1_empty.txt"}
    \new Staff \with {instrumentName = "Clarinet I" shortInstrumentName = "Clarinet I"}
      {\include "a1_clarinet_1.txt" \include "b1_empty.txt"}
    \new GrandStaff \with {instrumentName = "Woodwind" shortInstrumentName = "Woodwind"} <<
      \new Staff
      {\key c \major \clef treble \include "a1_empty.txt" \include "b1_wood.txt"}
      \new Staff
      {\key c \major \clef bass \include "a1_empty.txt" \include "b1_empty.txt"}
    >>
  >>
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Horn I" shortInstrumentName = "Horn I"}
      {\include "a1_horn_1.txt" \include "b1_horn_1.txt"}
    \new Staff \with {instrumentName = "Horn II" shortInstrumentName = "Horn II"}
      {\include "a1_horn_2.txt" \include "b1_horn_2.txt"}
    \new Staff \with {instrumentName = "Trumpet I" shortInstrumentName = "Trumpet I"}
      {% \transpose c d
      \include "a1_trumpet_1.txt" \include "b1_trumpet_1.txt"}
    \new GrandStaff \with {instrumentName = "Brass" shortInstrumentName = "Brass"} <<
      \new Staff
      {\key c \major \clef treble \include "a1_empty.txt" \include "b1_brass.txt"}
      \new Staff
      {\key c \major \clef bass \include "a1_empty.txt" \include "b1_empty.txt"}
    >>
  >>
  \new StaffGroup <<
    % \new RhythmicStaff \with { instrumentName = "Percussion" }
    % {\key c \major \include "a1_drum_track.txt"}
    \new RhythmicStaff \with {instrumentName = "Rimm 1" shortInstrumentName = "Rimm 1"}
    {\include "a1_empty.txt" \include "b1_rimm_1.txt"}
    \new RhythmicStaff \with {instrumentName = "Rimm 2" shortInstrumentName = "Rimm 2"}
    {\include "a1_empty.txt" \include "b1_rimm_2.txt"}
    \new RhythmicStaff \with {instrumentName = "Rimm 3" shortInstrumentName = "Rimm 3"}
    {\include "a1_empty.txt" \include "b1_rimm_3.txt"}
    \new RhythmicStaff \with {instrumentName = "Gran Cassa" shortInstrumentName = "Gran Cassa"}
    {\include "a1_empty.txt" \include "b1_gc.txt"}
    \new Staff \with { instrumentName = "Timpani" shortInstrumentName = "Timpani"}
    {\include "a1_empty.txt" \include "b1_empty.txt"}
  >>
  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin I"}
      {\include "a1_violin1.txt" \include "b1_violin1.txt"}
      \new Staff \with {instrumentName = "Violin I" shortInstrumentName = "Violin II"}
      {\include "a1_violin2.txt" \include "b1_violin2.txt"}
    >>
    \new Staff \with {instrumentName = "Viola" shortInstrumentName = "Viola"}
    {\include "a1_viola.txt" \include "b1_viola.txt"}
    \new Staff \with {instrumentName = "Cello" shortInstrumentName = "Cello"}
    {\include "a1_cello.txt" \include "b1_cello.txt"}
    \new Staff \with {instrumentName = "Bass" shortInstrumentName = "Bass"}
    {\include "a1_bass.txt" \include "b1_bass.txt"}
  >>
>>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}

