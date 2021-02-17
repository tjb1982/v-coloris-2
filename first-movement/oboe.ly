\include "./common.ly"

music = \relative c'' {
    | R4. * 4 | R4. | c4. \pp ~
    | 4. ~ | 8. 8.-- \<
    | \acciaccatura { d8 e g } c8 \ff -\iw "marcato" g e | d8^\hauptStart \sf ( e8 ) \niente c8 \> ~ ^\stimmeEnd
    | 4. ~ | 8 4 \< ~ | 4.-\iw "\"cuivré\"" \f \espressivo ~
    | \noniente 4. \> ~ | \niente 4. \p \> ~ | 4. ~ |
    | 4. ~ | 4. ~ | 4. ~ | 8 r8 \! r8 | R4. * 2 | r8. c8.^\hauptStart \! \< ~
    | 8 4 ~ |  \noniente 4. \espressivo \mf \> ~ | 8.^\stimmeEnd 8. \p \< ~ | 8. 8.-- | 8.-- 8.--
    | \acciaccatura { d8 e g } c8 \ff -\iw "marcato" g e8 | \niente d8^\hauptStart \sf ( e8 ) c8 \> ~ ^\stimmeEnd
    | 4. ~ | | 4. ~ | 8 4 ~ \! \< 
    | 4. \f \espressivo -\iw "\"cuivré\"" ~
    | 4. \> ~ | 4. ~ | 4. ~ | 8. r8. \!
}

oboe = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Oboe_Staff = \Common_Score_Staff #'oboe \oboe
First_Movement_Oboe_Part = \Common_Part \oboe
