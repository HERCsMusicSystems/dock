
\score {<<

	\new StaffGroup <<
		\new Staff {\clef tenor \key bes \major \numericTimeSignature \relative {
			\override Score.BarNumber.break-visibility = ##(#t #t #t)
			bes32 (c8..) g'2. ~ g r4 bes,32 (c8..) g'2 \tuplet 3/2 {bes8 (c8. g16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {bes8 f g} \tuplet 3/2 {d (es8. bes16 \staccato)} c4 ~ \tuplet 3/2 {c8 a8. ( c16}
			\tuplet 3/2 {es8 ) c ( es} \tuplet 3/2 {g ) es ( g )} \tuplet 3/2 {a g8. a16 ( } \tuplet 3/2 { g8 \staccato \noBeam ) a ( g )}
			\tuplet 3/2 {a g8. a16 ( } \tuplet 3/2 {g8 \staccato ) \noBeam a (g)} \clef treble \tuplet 3/2 {bes (ges8. bes16 \staccato )} des4 ( ~
			\tuplet 3/2 {des8 es8. c16 \staccato)} \tuplet 3/2 {des8 bes c} \tuplet 3/2 {as (bes8. ges16 \staccato)} \tuplet 3/2 {as8 f ges}
			\clef tenor \tuplet 3/2 {es (c8. es16 \staccato)} \tuplet 3/2 {c8 es (c) ~} c r r4
		}}
		\new Staff {\clef tenor \key bes \major \numericTimeSignature \relative {
			bes32 (g8..) es'2. ~ es r4 bes32 (g8..) es'2 \tuplet 3/2 {g8 (es8. c16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {f8 bes, d} \tuplet 3/2 {g, (bes8. es,16 \staccato)} g4 ~ \tuplet 3/2 {g8 f8. ( a16}
			\tuplet 3/2 {c8 ) a ( c} \tuplet 3/2 {es ) a, (c)} \tuplet 3/2 {es c8. es16 ( } \tuplet 3/2 {c8 \staccato \noBeam ) e ( cis )}
			\tuplet 3/2 {es! c8. es16 ( } \tuplet 3/2 {c8 \staccato ) \noBeam e (cis)} \tuplet 3/2 {es (c8. es16 \staccato)} ges4-- ( ~
			\tuplet 3/2 {ges8 bes8. g16 \staccato )} \tuplet 3/2 {ges8 f e} \tuplet 3/2 {es (d8. des16 \staccato)} \tuplet 3/2 {c8 ces bes}
			\tuplet 3/2 {bes (a8. bes16 \staccato)} \tuplet 3/2 {a8 bes (a) ~} a r r4
		}}
		\new Staff {\clef bass \key bes \major \numericTimeSignature \relative {
			f32 (bes8..) c2. ~ c r4  f,32 (bes8..) c2 \clef tenor \tuplet 3/2 {f8 (g8. es16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {d8 d bes} \tuplet 3/2 {bes (g8. g16 \staccato)} es4 ~ \tuplet 3/2 {es8 c8. ( f16}
			\tuplet 3/2 {g8 ) es ( g} \tuplet 3/2 {a ) g (a)} \tuplet 3/2 {c a8. c16 ( } \tuplet 3/2 {a8 \staccato \noBeam ) cis (a)}
			\tuplet 3/2 {c!8 a8. c16 ( } \tuplet 3/2 {a8 \staccato ) \noBeam cis (a)} \tuplet 3/2 {c (bes8. c16 \staccato )} es4-- ( ~
			\tuplet 3/2 {es8 ges8. e16 \staccato )} \tuplet 3/2 {es8 d des} \tuplet 3/2 {c (ces8. bes16 \staccato)} \tuplet 3/2 {beses8 as g}
			\tuplet 3/2 {fis (g8. fis16 \staccato)} \tuplet 3/2 {g8 fis (g) ~} g r r4
		}}
		\new Staff {\clef bass \key bes \major \numericTimeSignature \relative {
			d32 (es8..) bes'2. ~ bes r4 d,32 (es8..) bes'2 \tuplet 3/2 {d8 (c8. bes16 \staccato)}
			\omit TupletNumber \omit TupletBracket
			\tuplet 3/2 {bes8 a g} \tuplet 3/2 {f (es8. d16 \staccato)} c4 ~ c8 r
			r4 \tuplet 3/2 {r8 c (es)} \tuplet 3/2 {g es8. g16 ( } \tuplet 3/2 {es8 \staccato \noBeam ) g (e)}
			\tuplet 3/2 {g es8. g16 ( } \tuplet 3/2 {es8 \staccato ) \noBeam g (e)} \tuplet 3/2 {ges ( es8. ges16 )} bes4-- ( ~
			\tuplet 3/2 {bes8 c8. bes16 \staccato )} \tuplet 3/2 {a8 as g} \tuplet 3/2 {ges ( f8. fes16 \staccato )} \tuplet 3/2 {es8 d des}
			\tuplet 3/2 {c ( es8. c16 \staccato )} \tuplet 3/2 {es8 c (es) ~} es r r4 \bar "|."
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

