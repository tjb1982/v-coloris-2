\include "./common.ly"

music = \relative c'' {
    | R4. * 2
    | g'4.-> \pp ~
    | 8 g4 \< ~
    | g4 \p \> g,8-. ~
    | c4 8 \pp ~
    | 8 8 8 ~ | 8. 8.-- \<
    | \acciaccatura { d8 e g } c8-^ \ff g-^ e-^ | d8->^\hauptStart \sf ( e8 ) \niente g,8 \> ~
    % | c c,4 ^\stimmeEnd ~ | 8 r8 \! r8 | c'4.^\hauptStart -\iw "cuivré" \f \espressivo ~
    | c4. ^\stimmeEnd ~ | 8 r8 \! r8 | c4.^\hauptStart -\iw "cuivré" \f \espressivo ~
    | \noniente 4. \> ~ | \once \niente 4. \p \> ~ | 4.^\stimmeEnd ~ |
    | 4. ~ | 4. ~ | 8 r16 \! \once \niente g'8. \< ~ | 8. 8.-> ~ | 4 \p \> 8-> ~ | 8 8-! 8-! | 8-! \pp r16 \once \niente c,8. \! \< ~
    | 8 4 ^\hauptStart ~ | 4. \espressivo \mf \> ~ | 8^\stimmeEnd r16 \! 8. \p \< ~ | 8. 8. | 8 8 8
    | \acciaccatura { d8 e g } c8-^ \ff g-^ e8-^ | \niente d8->^\hauptStart ( e8 ) c8 \> ~
    | 4. ^\stimmeEnd ~ | | 4. ~ | 8 r \! r
    | 4. \f \espressivo ~ ^\hauptStart
    | \noniente 4. \> ~ | \once \niente 4. \p \> ~ | 4.^\stimmeEnd ~ | 4. ~ | 8 r8 \! r8
    % | 4. \< ~ | \niente 4. \p \> ~ | 8. r8. \!

    | r8 a^\hauptStart \mp ( g-. ) | \acciaccatura { a } g ( fis ) b ( | c ) a g
    | fis ( g-. ) d ( | e ) a ( g-. ) | \acciaccatura g f! ( \< e ) b' ( | c-. ) bes!-. a-.
    | g4. \mf \> \espressivo ~ | 8.^\stimmeEnd r8. \!
    | R4. * 3 
    | r8 r8 g'-- ^\hauptStart | \acciaccatura a g-. fis-. a-. | g4. \espressivo ~ | 8 ^\stimmeEnd r8 r8

}

oboe = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Oboe_Staff = \Common_Score_Staff #'oboe \oboe
First_Movement_Oboe_Part = \Common_Part \oboe
