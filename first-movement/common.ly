\include "../common.ly"

Lattice = {
    \time 3/8
    \tempo "Allegro di molto" 4. = 120
    % \repeat unfold 16 { s4. * 2 }
    % \bar "|."
}

Leggiero = #(define-event-function (dyn) (string?) #{ \AnnotatedDynamic $dyn "leggiero" #})