\include "./common.ly"

fparen = #(make-dynamic-script #{
    \markup {
        \normal-text "("
        \dynamic "f"
        \normal-text ")"
    }
#})

music = \relative c {
    % | \once
    %     {
    %         \niente
    %         \override Hairpin.height = #0.5
    %     }
    %     g4. \! \< ~
    % | 8. \pp 8.-> ~ | 4. ~ | 8 8 \< 8 | 8 8 8 ~
    % | \once {
    %     \override Hairpin #'minimum-length = #8
    %     \override Hairpin #'height = #0.6
    % } \noniente 4. \mp \>
    % | 4. \! \< ~
    R4. * 2
    | r8 \once \niente \art "portato" {
        \tag #'nomidi { f \< }
        \tag #'midi { f \ppp \< }
        f | f f f | \once \niente f \pp \> f f | f f f } | f4. ~

    % | \niente g4. ~ \<
    % | \repeat unfold 3 { g4. ~ \> }
    % | g4. \! \noniente
    
    | f8. \breathe c'8. \p \< ~ | c4. \f \espressivo -\iw "cuivré" ~ | c4. \> ~ | 8 c'4-- \p
    | c4. \< ~ | \once \niente 4. \f \espressivo \> ~ | c4. ~
    | 8 r16 \acciaccatura c,8-> \p \< ^\hauptStart b'8. ( ~ | 4. ~ | \noniente 4. \mp \> ~ | 4.
    | c4. \pp \< ~ | 4.^\stimmeEnd ~ | \once \niente 4. \p \> ~ | 4. ~ | 4. ~ | 8 ) r8 \! \art "portato" { 8 \pp \<
    | 8 8 8 | 8 8 } 8 ~ | 8 \p 8-_ 8 ~ | 8. c,8. \< ~ | c4. \ff \espressivo ~ | \noniente c4. \> ~ | 8 d'4-- ^\markup \raise #1 \hauptStart \p
    | 4. \< ~ | 4. \f \> ~ | 4. ~ | 8 \niente g4 \espressivo \p ~ | 4. \> ~ | 8. ^\stimmeEnd \breathe c,8. \< ~
    | c4. ~ | c4. \mp \> ~ | c4. ~ | c4. ~ | 8 r8 \! r8 | r8 r8 g'8-- \pp | g8-^ r8 r8 | g8-- g8-^ r8 | r8 g8-- g8-^
    | r8 r8 \noniente g8-! | 4. \espressivo ~ | 8 r8 \! r8
    | R4. * 4
    % | R4. * 11

    | r8 \once \niente g,,4 \< ~
    | 8 \pp r8 g'8-- ~
    | g g ( g,-. )
    | r8 g' ( g,-. )
    | g'-. r8 g,-. \<
    | g'-- r8 g-.
    | r8 g4-- (
    | g,8-. ) r8 g ( 
    | g'4-- ) \mf \> g8-.
    | g8 ( g,-. ) r8
    | g'4 ( g,8-. )
    | g'8.-- r16 \once \override NoteHead.style = #'cross g,-. \pp


    % | b4. \< | b8 \!

    % | r8 bes,!^\hauptStart \< ( a-. ) | \acciaccatura a g ( e ) c-- | f!-- \mf bes!-- a-. | g-. f!-. e-. | d-- d, \< ( e | a d g ) | g4 \f c,8-> ( | b'4. ~
    % | 4. \espressivo ~ | 4. ) | b,4. \rfz \> ~ | 4. ~ | 8.^\stimmeEnd r8. \!
    
    % | r8 a,^\hauptStart \mp ( g ) | \acciaccatura { a } g ( fis ) b | c a g | fis ( g ) d ( | e ) a g | \acciaccatura g f! ( \< e ) b' ( | c ) bes! a
    % | g4. \mf \> \espressivo ~ | 8.^\stimmeEnd r8. \! | R4. 

}

clarinet = \new Voice {
    <<
    \Lattice
    \music
    >>
}

First_Movement_Clarinet_Staff = \Common_Score_Staff #'clarinet \clarinet
First_Movement_Clarinet_Part = \Common_Part \transpose c ees \clarinet
First_Movement_Clarinet_MIDI = \removeWithTag #'nomidi \clarinet
