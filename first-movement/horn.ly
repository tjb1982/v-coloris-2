\include "./common.ly"

phrase_one = \relative c'' {
    % | g'4. ~ | g8 8 8 | 8 8 8 | g4. ~
    | R4. * 5
    | g4. \pp ~
    | 4.^\hauptStart \< ~
    | 8 8-- 8 ~ 
    | g4. \ff \espressivo -\iw "cuivré" ~
    | g4. \> ~
    | g4^\stimmeEnd r8 \! | r8 c,->^\hauptStart \f ( b' )
    | b4. \espressivo -\iw "cuivré" ~ | b4. \> ~ |
    | b4. ~ | 8.^\stimmeEnd r8. \! | R4. | a8^\hauptStart \mf ( g ) b
    | c a g | fis ( g ) e (
    | f! ) bes! a g f e
    | d ( \< a ) e a d g % original
    % | d4 \< e,8 a d g
    | b8.-- \f \> g \espressivo ~ | g8.^\stimmeEnd r8. \!
    | r8. g8.^\hauptStart \< ~ | 8 8-- 8 ~ | 4. \ff \espressivo -\iw "cuivré" ~ \> | 4. ~ | 4 ~ 8 \p ^\stimmeEnd
    | r8 a->^\hauptStart \f ( b ) | b4-- d,8 ( \sf | b'4. \espressivo ~
    | b4. ~
    | b4. \> ~ | 8.^\stimmeEnd ) r8. \! | R4.
    |
        \override TextSpanner.bound-details.left.text = \markup {
            \whiteout \normal-text "3/4 stopped, sotto voce"
        }
        \once \niente r8 g4 \startTextSpan \pp \< ~
    | g8 g g | g \p \> g g | g g g
    | g-> \pp g r
    % | R4. * 3
    | r8 g8-> 8 | r8 r8 8-> | 8 \stopTextSpan r8 r8
    |
        \override TextSpanner.bound-details.left.text = \markup {
            \whiteout \normal-text "fully stopped"
        }
        \noniente g4.^\hauptStart \fp \< \startTextSpan ~ | 4. \mf \> ~ | 4. ~
            | 8 \p \stopTextSpan r8 g16-. ^\markup \whiteout open \mp g-. | g8-. f!8-. a-.
            | g4.-- \> ~ | 8.^\stimmeEnd r8. \!
    | R4.
    % | r8 bes!^\hauptStart ^"(open)" \< a | g e c | f! \mf bes! a | g f! e | d \< d, e | a d g | g c, b' ~
    % | 4. \f \espressivo ~ | 4. | b,4. \rfz \> ~ | 4. ~ | 8.^\stimmeEnd r8. \!
}

phrase_two = \relative c'' {
    % | r4.
    % | b!4. ~ b4. ~ | b8 a g
    % | g fis b c a g
    % | fis g d e a g
    % | f! e b' c bes! a
    % | g4.
}

music = {
    % \set Staff.midiInstrument = "french horn"
    \phrase_one
    \phrase_two
}

horn = \new Voice {
    <<
    \Lattice
    \music
    >>
}



First_Movement_Horn_Staff = \Common_Score_Staff #'horn \horn
First_Movement_Horn_Part = \Common_Part \transpose c g \horn
