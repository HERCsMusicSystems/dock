
\score {<<

	\new StaffGroup <<
		\new Staff {\clef tenor \key bes \major \relative {
			\override Score.BarNumber.break-visibility = ##(#t #t #t)
			bes1 c g' bes, c g' bes c g
			bes f g d es bes c a c
			es c es g es g a g a g a g
			a g a g a g \clef treble bes ges bes des
			es c des bes c as bes ges as f ges
			\clef tenor es c es c es c
		}}
		\new Staff {\clef tenor \key bes \major \relative {
			bes1 g es' bes g es' g es c
			f bes, d g, bes es, g f a
			c a c es a, c es c es c e cis
			es c es c e cis es c es ges
			bes g ges f e es d des c ces bes
			bes a bes a bes a
		}}
		\new Staff {\clef bass \key bes \major \relative {
			f1 bes c  f, bes c \clef tenor f g es
			d d bes bes g g es c f
			g es g a g a c a c a cis a
			c a c a cis a c bes c es
			ges e es d des c ces bes beses as g
			fis g fis g fis g
		}}
		\new Staff {\clef bass \key bes \major \relative {
			d1 es bes' d, es bes' d c bes
			bes a g f es d c r r
			r r r r c es g es g es g e
			g es g es g e ges es ges bes
			c bes a as g ges f fes es d des
			c es c es c es
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

