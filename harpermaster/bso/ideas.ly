#(set-default-paper-size "a3")

\header {
  title = "Music Ideas"
  composer = "Robert"
}
\markup \vspace #2
\score {
  \header {piece = "Hejnal Mariacki" opus = "anon."}
  \new Staff {\omit Staff.TimeSignature \override Score.BarLine.stencil = ##f
    \autoBeamOff \relative {
      f'2 \fermata a16 [c] f2 \fermata c8 a [f] c'8. [c16] c2 \fermata \breathe
      a4 \tuplet 3/2 {c16 [a f]} c2 f16 [a] c4 a16 [f] c2 \fermata \breathe
      f4 \tuplet 3/2 {a8 [f a]} c4 a8 [f] c'8. [c16] c2 \fermata \breathe
      a2 \fermata c8 \staccato
      \revert Score.BarLine.stencil \bar "|."}
  }
}

\score {
  \new Staff \with {
    \override StaffSymbol.line-count = #11
    \override KeySignature.flat-positions = #'((-7 . 6))
    \override KeyCancellation.flat-positions = #'((-7 . 6))
    % presumably sharps are also printed in both octaves
    \override KeySignature.sharp-positions = #'((-6 . 7))
    \override KeyCancellation.sharp-positions = #'((-6 . 7))
    \override Clef.stencil = #
    (lambda (grob)(grob-interpret-markup grob
    #{ \markup{\combine
      \musicglyph #"clefs.C"
      \translate #'(-3 . -2)
      \combine
        \musicglyph #"clefs.F"
        \translate #'(0 . 4)
        \musicglyph #"clefs.G"
      }
     #}))
      clefPosition = #0
      middleCPosition = #0
      middleCClefPosition = #0
  }
  {c d e f}
}

musicUp = \relative {<c' e g>2 (<c e g> <c e g> <c e g>)}
musicDown = \relative {c'2 (b a g)}

\score {
  \new PianoStaff <<
    \new Staff {
      \relative {
        f'8. a32 c f2 \tuplet 3/2 {c8 a f} c'8. c32 c c2.
        a8 \tuplet 3/2 {c16 a f} c8. f32 a c16 a32 f c8 (c4)
        f8 \tuplet 3/2 {a16 f a} c8. a32 f c'16 c32 c c8 (c4)
        a4 (a8.) c16 \staccato r2
      }
    }
    \new Staff << \musicUp \\ \musicDown>>
  >>
}