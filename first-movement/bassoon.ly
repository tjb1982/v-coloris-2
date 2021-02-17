\include "./common.ly"

music = \relative c {
    \clef "bass"
    | R4. * 4 | \niente g''4. \< ~ | 4. \mp \> ~ | \noniente 8 r8 \! r8 | R4.
    | c,,,8-> \AnnotatedDynamic "ff" "marcato" g' d' a' d g | b4.-> \dyn "ffp" ~
    | \niente 4. \> ~ | 8 r8 \! r8
    % | R4. * 3 | r8 r c,,,8 \pp ( ~ | c4. | d'4. ~ | d8. e'8.-- | 4. ~ | 4. ~ | 8 ) r r | R4.
    | R4. * 9
    | g4. \< ~ | g4. ~ | g4. ~
    %| \niente c,4. ( \! \< ~ | 4. ~ | 4. \pp \> ~ | 4. ~ | c4. ~ | c4. | d8 ) r \! r | R4.
    | 4. ~ | 4. \AnnotatedDynamic "ff" " \"cuivré\"" ~ | 8. 8.--
    % | c,,,8-^ \ff g' d' | a' d g | b4.-> ~ | 4. \> ~ | 8 r \! r
    | c,,,8-> \ff g' d' | a' d g | \clef "tenor" b4.-> \dyn "ffp" ~ | 4. \> ~ | 8 r \! r
    | R4.
    | R4.
    | \niente b4. ( \< ~ | b4. ~ | \noniente b4. -\iw "\"cuivré\"" \ff \> ~ | b4. ~ | b4. ~
    | b4. | c4. \pp ~ | 4. ~
    | 4. ~ | 4. ~ | 4. ~ | 4. ) | \acciaccatura { d8 c b! } c4. \< ~ | 4. \f \> ~ | 4. ~ | 4. ~ | 8. \! r8.
}

bassoon = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Bassoon_Staff = \Common_Score_Staff #'bassoon \bassoon
First_Movement_Bassoon_Part = \Common_Part \bassoon
