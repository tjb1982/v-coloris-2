\include "./common.ly"


music = \relative c''' {
    % \set Staff.midiInstrument = "flute"
    |
        \tag #'midi { \aeolian { g4.-> \pp \< ~ } }
        \tag #'nomidi { \aeolian { \once \niente g4.-> \< ~ } }
    | \halfaeolian { 4. ~ }
    | 4. ~
    | 8. 8.-> \p \> ~
    | 8 8 \halfaeolian 8 | \repeat tremolo 3 \halfaeolian { g8 \pp } | \halfaeolian { 8 16 16 } 8 | \repeat tremolo 3 g8 \<

    | \acciaccatura { d g c } g'8.-> \f \> c,8.-^
    | g4.-> ~
    | \once \niente 8 \p \> 8 8 | g,8 g'8 g,8 | g'8 \halfaeolian { g, g' } | r8. \! \once \niente \aeolian { g8. \< ~ }
    | \halfaeolian { g8 } 8 8
    |
        \halfaeolian { g8-^ \pp }
        8 8
    | r8 g8 \halfaeolian { g8-^ }
    | 8 r8 g8
    | \halfaeolian g8-^ r8 r8
    | \once \override NoteHead.style = #'cross g,8-^ r8 r8
    | r8 g'16 \pp \< 16 8
    | \halfaeolian g8-^ \p \aeolian g8 r8
    | r8 \once \override NoteHead.style = #'cross g,8-^ r8
    | \halfaeolian { r8 \repeat tremolo 8 g32^"flz." \< ~ }
    | \halfaeolian { g8 \mp \> g'8 } 8
    | 8 16 16 8
    | \acciaccatura { g c } g'8-^ \p \< g, g'
    | g,8 \acciaccatura { g c } g'-^ g,
    | \acciaccatura { d g c } g'8-> \ff \> c,8-^ g8-^
    | g'8 g, g'
    | \once \niente g,8 \mp \> g' g, | g, g' \halfaeolian { g,
    | g' g, g' | g,8 } r8 \! r8 | R4.
    | r8 \halfaeolian { g'8 \pp \< 8
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \mf \>
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \pp
    | \repeat tremolo 3 g8 \<
    | g8 \p \> } g g

    | 8-^ \pp 8 r8
    | r8 8-^ 8 | r8 r8 8-^ | 8 r8 r8 | 8-^ 8 r8
    | \art "staccato" { r8 g8 \< 8
    | 8 \mp \> 8 8
    | 8 \pp 8 r8
    | r8 8 r8 }
    |
        \setTextSpanText "(echo)"
        g8 \< ( g,8-. ) g'8-- \startTextSpan
    | \acciaccatura a8 g8-. \mp \> fis8-. a8-.
    | g4.-- ~
    | g8 \stopTextSpan 8-. 8 ( 
    | g,8-. ) r8 \pp g'-. | g ( g,-. ) g'-.
    | r8 g,-^ r8
    | g \< ( g'-. ) r8
    | g, ( g'-. ) r8
    | r8 g, ( g'-. )
    | \acciaccatura { g c } g' ( g,-. ) g,-.
    | \tuplet 3/2 { c16-. g'-. c-. } g'8-. \mf \> g,-- ~
    | g16 r16 g,8 ( g'-. )
    | r8 g,-^ \pp r8
}

flute = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Flute_Staff = \Common_Score_Staff #'flute \flute
First_Movement_Flute_Part = \Common_Part \flute