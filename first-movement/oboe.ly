\include "./common.ly"

music = \relative c'' {
    | R4. * 3
    % | g'4.-> \pp ~
    | r8 \once \niente g'4 \< ~
    | g4 \p \> g,8-.
    | c4. \pp \< ~
    | c4. \p \> ~ | c8. \breathe c8.-- \pp \<
    | \acciaccatura { d8 e g } c8-> ^\hauptStart \f g-^ e-^ | d8-> \sf ( e8 ) \once \niente g,8-- \>
    | c4. ~ | 8 ^\stimmeEnd r8 \! r8
    | R4.
    | r8 \once \niente c4 \< ~
    | \once \niente 4. \p \> ~ | 4.^\stimmeEnd ~ |
    | 4. ~ | 4. ~ | 8 r16 \! \once \niente g'8. \< ~ | 8. 8.-> ~ | 4 \p \> 8-> ~ | 8 8-! 8-! | 8-! \pp r16 \once \niente c,8. \! \< ~
    | 8 4 \p \< ^\hauptStart ~ | \once \niente 4. \espressivo \mf \> ~ | 8^\stimmeEnd r16 \! \once \niente 8. \< ~ | 8. 8. | 8 8 8
    | \acciaccatura { d8 e g } c8-> \ff g-^ e8-^ | \niente d8->^\hauptStart ( e8 ) c8 \> ~
    | 4. ^\stimmeEnd ~ | | 4. ~ | 8 r \! r
    | \noniente 4. \f \> \espressivo ~ ^\hauptStart
    | 4. ~ | \niente 4. \p \> ~ | 4.^\stimmeEnd ~ | 8. r8. \! \noniente
    
    | r8 a \mp ^\hauptStart ( g-. )
    | \acciaccatura { a } g ( fis ) b (
    | c ) a g
    | fis ( g-. ) d (
    | e ) a ( g-. )
    | \acciaccatura g f! ( \< e ) b' (
    | c-. ) bes!-. a-.
    | g4. \mf \> \espressivo ~
    | g4. ~
    | g8 \! r8 r8

    | R4.
    | r8 r8 g'-- \pp
    | g-. r8 g8-!
    
    % | r8 r8 g-- ^\markup { \translate #'(0 . 1.5) \hauptStart } | \acciaccatura a g-. fis-. a-. | g4. \espressivo ~
    | R4. * 2

    | R4. * 12
    
    % | r8 \once \niente g,4 \< ~
    % | 8 \pp r8 g'8-- ~
    % | g g ( g,-. )
    % | r8 g' ( g,-. )
    % | g'-. r8 g,-. \<
    % | g'-- r8 g-.
    % | r8 g4-- (
    % | g,8-. ) r8 g ( 
    % | g'4-- ) \mf \> g8-.
    % | g8 ( g,-. ) r8
    % | g'4 ( g,8-. )
    % | g'8.-- r16 \once \override NoteHead.style = #'cross g,-. \pp

}

oboe = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Oboe_Staff = \Common_Score_Staff #'oboe \oboe
First_Movement_Oboe_Part = \Common_Part \oboe
