\include "./common.ly"

music = \relative c {
    \clef "bass"
    | R4. * 4 | \niente g''4. \< ~ | 4. \mp \> ~ | \noniente 8 r8 \! 8 \< ~ | 8 g,8 g, %R4.
    | c,8-> ^\hauptStart \ff g'-^ d'-^ a'-^ d-^ g-^ | b4.-> \dyn "sffmp" ~
    | \once \niente 4. \> ~ | 8 ^\stimmeEnd r8 \! r8
    | R4. * 2 | r8 r8 g \pp | g-^ g r8 | g-^ g r8 | r8 g g | g-^ r8 g-^ | r8 r8 g8 ~ | g-. r8 g ~
    | g4. \< ~ | g4 g8 ~ | g4. ~
    %| \niente c,4. ( \! \< ~ | 4. ~ | 4. \pp \> ~ | 4. ~ | c4. ~ | c4. | d8 ) r \! r | R4.
    | 4.^\hauptStart ~ | 4. \ff -\iw "cuivré" ~ | 8. 8.-- %^\markup \translate #'(0 . 3.75) \hauptStart
    % | c,,,8-^ \ff g' d' | a' d g | b4.-> ~ | 4. \> ~ | 8 r \! r
    | \acciaccatura { g,8 d g, } c,8-> g'-^ d'-^ | a'-^ d-^ g-^ | \clef "tenor" b4.-> \dyn "ffmp" ~ | \once \niente 4. \> ~ | 4. ~ | 8 ^\stimmeEnd r \! r
    % | R4.
    | R4.
    | \niente b4. ( \< ~ | b4.^\hauptStart ~ | \noniente b4. -\iw "cuivré" \ff \> ~ | b4. ~ | b4. ~
    | b4. | c4. \pp ~ | 4.^\stimmeEnd ~
    | 4. ~ | 4. ~ | 4. ~ | 4. ) | \acciaccatura { d8^\hauptStart c b! } c4. \< ~ | 4. \f \> ~ | 4. ~ | 4. ~ | 8.^\stimmeEnd \! r8.
}

bassoon = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Bassoon_Staff = \Common_Score_Staff #'bassoon \bassoon
First_Movement_Bassoon_Part = \Common_Part \bassoon
