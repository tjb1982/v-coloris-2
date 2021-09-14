\include "./common.ly"

music = \relative c {
    \clef "bass"
    | R4. * 4 | \once \niente g''4. \< ~ | 4. \mp \> ~ | \noniente 4 8 \pp \< ~ | 8 g,8-- g,--
    | c,8-> ^\hauptStart \f g'-^ d'-^ a'-^ \clef "tenor" d-^ g-^ | \once \niente b4.-> \dyn "sfmp" ~ \>
    | 4. ~ | 8 ^\stimmeEnd r8 \! r8

    | R4.
    | \clef "tenor" \once \niente b4. \< ~
    | 4. ~
    | 4. \mf ^\hauptStart
    | \acciaccatura b8 a8 ( g ) b
    | c a g
    | fis ( g ) e (
    | f! ) bes! a
    | g f e
    | d ( \< a ) e
    | a d g
    | b8.-- \f \> g ~

    | 4. \espressivo ~ | 4. -\iw "cuivré" ~ | 8. ^\stimmeEnd r8. \!
    | \clef "bass" \acciaccatura { g,8 ^\hauptStart d g, } c,8-> \ff g'-^ d'-^ | a'-^ \clef "tenor" d-^ g-^ | \once \niente b4.-> \dyn "sffmp" ~ \> | 4. ~ | 4. ~ | 8 ^\stimmeEnd r \! r
    | R4.
    | \once \niente b4. ( \< ~ | b4.^\hauptStart ~ | b4. -\iw "cuivré" \ff \> ~
    | b4. ~
    | b4. ~
    | b4.
    | c4. \pp \< ~
    | 4.^\stimmeEnd ~
    | 4. ~
    | 4. ~
    | 4. ~
    | 4 ) \tuplet 3/2 { d16 \p ^\hauptStart ( c b! }
    | c4. ) \< ~
    | 4. \f \> ~
    | 4. ~
    | 4. ~
    | 8.^\stimmeEnd \! r8.

    | R4. * 9

    | \clef "bass" c,,,4. ( \espressivo \f ~ | 4. | c' ~ | c \> ~ | c8 ) r8 \! r8
}

bassoon = \new Voice {
    <<
    \Lattice
    \music
    >>
}

%%% 704-494-3646 Lowes delivery customer service

First_Movement_Bassoon_Staff = \Common_Score_Staff #'bassoon \bassoon
First_Movement_Bassoon_Part = \Common_Part \bassoon
