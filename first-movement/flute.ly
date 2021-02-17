\include "./common.ly"

music = \relative c''' {
    % \set Staff.midiInstrument = "flute"
    | R4.
    % | g4. \pp 4.-\Leggiero ~ 8. 16 8
    | g4. \Leggiero "pp" | 4. ~ | 8. 16 8
    | \repeat unfold 2 { \repeat tremolo 3 g8 } | 8 16 16 8 | \repeat tremolo 3 g8 \<

    % | \acciaccatura { g c d } g8.-> \ff c,8.-> | g4. \sf \> ~
    | \acciaccatura { d g c } g'8. \AnnotatedDynamic "ff" "marcato" c,8.
    | \once \niente g4. \sf \> ~
    | 4. ~ | 8. r8. \! | R4. | r8. g8. \ppp ~
    | \repeat tremolo 3 g8 \< -\markup \whiteout \italic "leggiero"
    | \repeat tremolo 3 g8 \p \>
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \pp 
    | \repeat unfold 3 { \repeat tremolo 3 g8 }
    | \repeat tremolo 3 g8 \<
    | \repeat unfold 2 { \repeat tremolo 3 g8 }
    | \repeat tremolo 3 g8 \mp
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \<
    | \repeat tremolo 3 g8
    | \acciaccatura { d g c } g'8 \ff -\iw "marcato" c,8 g8
    | \once \niente g4. \sf \> ~ | 4. ~ | 8 r8 \! r8
    | R4. * 3
    | r8 g8 -\iw "leggiero" \ppp \< 8
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \mf \>
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \pp

    % \tag #'part { \repeat percent 12 { 8 8 8 } }
    % \tag #'score { \repeat unfold 12 { 8 8 8 } }
}

flute = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Flute_Staff = \Common_Score_Staff #'flute \flute
First_Movement_Flute_Part = \Common_Part \flute
