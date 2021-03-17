\include "./common.ly"

threm = #(define-music-function
    (m) (ly:music?)
    #{
        \repeat tremolo 3 $m
        #})

music = \relative c''' {
    % \set Staff.midiInstrument = "flute"
    | R4.
    | g4.-> \pp \< ~ | 4. ~ | 8. 8.-> \p \> ~
    | 8 8 \pp 8 | \repeat tremolo 3 g8 | 8 16 16 8 | \repeat tremolo 3 g8 \<

    % | \acciaccatura { g c d } g8.-> \ff c,8.-> | g4. \sf \> ~
    | \acciaccatura { d g c } g'8.-^ \ff c,8.-^
    | g4. \espressivo ~
    | \once \niente 8 \> 8 8 | g,8 g'8 g,8 | g'8 g, g' | r8. \! \once \niente g8. \< ~
    | g8 8 8
    % | \threm { g8 \p \> }
    | g8-^ \pp 8 8
    % | \threm g8 \>
    | r8 g8 g8-^
    % | \threm g8 \pp \<
    | 8 r8 g8
    % | \repeat tremolo 3 g8
    | g8-^ g8 r8
    % | 8 \p \> 8 8
    % | \repeat tremolo 3 g8
    | g8-^ g8 r8
    | 8 16 16 8
    | g8-^ r8 r8
    | r8 g8 \< 8
    | 8 \repeat tremolo 8 g,32^"flz." ~
    | g8 \mp \> g'8 8
    % | \repeat tremolo 3 g8 \>
    | 8 16 16 8
    % | \repeat tremolo 3 g8 \<
    % | \repeat tremolo 3 g8
    | \acciaccatura { g c } g'8-^ \p \< g, g'
    | g,8 \acciaccatura { g c } g'-^ g,
    | \acciaccatura { d g c } g'8-^ \ff \> c,8-^ g8-^
    | g'8 g, g' ~
    | \once \niente g,8 \mp \> g' g, | g, g' g,
    | g' g, g' | g,8 r8 \! r8 | R4.
    | r8 g'8 \pp \< 8
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \mf \>
    | \repeat tremolo 3 g8
    | \repeat tremolo 3 g8 \pp
    | \repeat tremolo 3 g8 \<
    | \repeat tremolo 3 g8 \p \>

    | 8-^ \pp 8 r8
    | r8 8-^ 8 | r8 r8 8-^ | 8 r8 r8 | 8-^ 8 r8
    | r8 8 \< 8 | 8 \mp \> 8 8 | 8 \pp 8 8 | 8 8 8 | 8 8 8 | 8 8 8 | g8 8 8 | 8 8 8
    % | \repeat tremolo 3 g8 
    % | \repeat tremolo 3 g8 \pp
    % | \repeat tremolo 3 g8
    % | \repeat unfold 6 { \repeat tremolo 3 g8 }

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
