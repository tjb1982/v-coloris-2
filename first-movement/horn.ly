\include "./common.ly"

phrase_one = \relative c'' {
    % | g'4. ~ | g8 8 8 | 8 8 8 | g4. ~
    | R4. * 5
    | g4.^\hauptStart \pp ~
    | 4. \< ~
    | 8 8 8 ~ 
    | g4. \ff \espressivo -\iw "cuivré" ~
    | g4. \> ~
    | g4^\stimmeEnd r8 \! | r8 c,->^\hauptStart \f ( b' )
    | b4. \espressivo -\iw "cuivré" ~ | b4. \> ~ |
    | b4. ~ | 8.^\stimmeEnd r8. \! | R4. | a8^\hauptStart \AnnotatedDynamic "mp" "leggiero" g b
    | c a g fis g e
    | f! bes! a g f e
    | d \< a e a d g
    | b8.-- \f \> g ~ | g8.^\stimmeEnd r8.
    | r8. \! g8.^\hauptStart \< ~ | 8 8 8 ~ | 4. \ff \espressivo -\iw "cuivré" ~ \> | 4. ~ | 4.^\stimmeEnd \!
    | r8 a->^\hauptStart \f ( b ) | b8 d,8 ( \sf b'8 ~ | b4. \espressivo ~
    | b4. ~
    | b4. \> ~ | 8.^\stimmeEnd ) r8. \! | R4. * 2
    | r8 a \AnnotatedDynamic "p" "leggiero" g | g fis b | c a g | fis g d | e a g | f! \< e b' | c bes! a
    | g4. \mf \> \espressivo ~ | 8. r8. \! | R4. | r8 r8 g16-. \p g-. | g8-.-- f!8-.-- a-.-- | g4.-- ~ | 8.^\stimmeEnd r8.
    | R4. | r8 bes!^\hauptStart \< a | g e c | f! \mf bes! a | g f! e | d \< a e | a d g | g c, b' ~
    | 4. \f \espressivo ~ | 4. | b,4. \rfz \> ~ | 4. ~ | 8.^\stimmeEnd r8. \!
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
