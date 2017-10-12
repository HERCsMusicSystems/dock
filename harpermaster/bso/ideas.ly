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
      f4 \tuplet 3/2 {a8 [f a]} c4 a8 [f] c'8. [c16] c2 \fermata \breath
      a2 \fermata c8 \staccato
      \revert Score.BarLine.stencil \bar "|."}
  }
}