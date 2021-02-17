\include "./common.ly"

music = \relative c' {
    | \override Hairpin.circled-tip = ##t
        g4. \! \< ~
    | 4. \pp ~ | 4. ~ | 4. ~ | 4. ~ | 4. | \noniente 4. \< ~ | 8. c8. \f ~ | c4. \espressivo ~ | c4. \> ~ | 8 c'4-- \p
    | \niente 4. \> ~ | 4. ~ | 8 r8 \! r8
    % | R4. * 3
    | b4.^\hauptStart \< ( ~ | 4. ~ | \noniente 4. \mp \> ~ | 4. ~ | \niente c4.^\stimmeEnd \p \> ~ | 4. ~ | 4. ~ | 4. ~ | 4. ~ | 8 ) r8 \! r8
    | r4. | c,4. \< ~ | 4. ~ | 8. c8. \ff ~ | c4. \espressivo ~ | \noniente c4. \> ~ | 8 d'4-- \p
    | 4. \< ~ | 4. \f \> ~ | 4. ~ | 8 \niente g4 \espressivo \p ~ | 4. \> ~ | 8 r \! c,8 \< ~ | 4. ~ | 4. \mf ~ | 4. \> ~ | 4. ~ | 8. r8. \!
}

clarinet = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Clarinet_Staff = \Common_Score_Staff #'clarinet \clarinet
First_Movement_Clarinet_Part = \Common_Part \transpose c ees \clarinet
