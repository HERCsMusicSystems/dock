
\score {<<

	\new StaffGroup <<
		\new Staff {\clef tenor \key bes \major \numericTimeSignature \relative {
			\override Score.BarNumber.break-visibility = ##(#t #t #t)
			bes32 (c8..) g'2. ~ g r4 bes,32 (c8..) g'2 \tuplet 3/2 {bes8 (c8. g16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {bes8 f g} \tuplet 3/2 {d (es8. bes16 \staccato)} c4 ~ \tuplet 3/2 {c8 a8. ( c16}
			\tuplet 3/2 {es8 ) c ( es} \tuplet 3/2 {g ) es ( g )} \tuplet 3/2 {a g8. a16 ( } \tuplet 3/2 { g8 \staccato \noBeam ) a ( g )}
			a g a g a g \clef treble bes ges bes des
			es c des bes c as bes ges as f ges
			\clef tenor es c es c es c
		}}
		\new Staff {\clef tenor \key bes \major \numericTimeSignature \relative {
			bes32 (g8..) es'2. ~ es r4 bes32 (g8..) es'2 \tuplet 3/2 {g8 (es8. c16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {f8 bes, d} \tuplet 3/2 {g, (bes8. es,16 \staccato)} g4 ~ \tuplet 3/2 {g8 f8. ( a16}
			\tuplet 3/2 {c8 ) a ( c} \tuplet 3/2 {es ) a, (c)} \tuplet 3/2 {es c8. es16 ( } \tuplet 3/2 {c8 \staccato \noBeam ) e ( cis )}
			es c es c e cis es c es ges
			bes g ges f e es d des c ces bes
			bes a bes a bes a
		}}
		\new Staff {\clef bass \key bes \major \numericTimeSignature \relative {
			f32 (bes8..) c2. ~ c r4  f,32 (bes8..) c2 \clef tenor \tuplet 3/2 {f8 (g8. es16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {d8 d bes} \tuplet 3/2 {bes (g8. g16 \staccato)} es4 ~ \tuplet 3/2 {es8 c8. ( f16}
			\tuplet 3/2 {g8 ) es ( g} \tuplet 3/2 {a ) g (a)} \tuplet 3/2 {c a8. c16 ( } \tuplet 3/2 {a8 \staccato \noBeam ) cis (a)}
			c a c a cis a c bes c es
			ges e es d des c ces bes beses as g
			fis g fis g fis g
		}}
		\new Staff {\clef bass \key bes \major \numericTimeSignature \relative {
			d32 (es8..) bes'2. ~ bes r4 d,32 (es8..) bes'2 \tuplet 3/2 {d8 (c8. bes16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {bes8 a g} \tuplet 3/2 {f (es8. d16 \staccato)} c4 ~ c8 r
			r4 \tuplet 3/2 {r8 c (es)} \tuplet 3/2 {g es8. g16 ( } \tuplet 3/2 {es8 \staccato \noBeam ) g (e)}
			\tuplet 3/2 {g es g} \tuplet 3/2 {es g e} \tuplet 3/2 {ges es ges} bes4
			\tuplet 3/2 {bes8 c bes} \tuplet 3/2 {a as g} \tuplet 3/2 {ges f fes} \tuplet 3/2 {es d des}
			\tuplet 3/2 {c es c} \tuplet 3/2 {es c es ~} es8 r r4
		}}
	>>

>>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

}

