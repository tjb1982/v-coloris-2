#(load "./common.scm")
#(load "./instruments.scm")
#(set-instrument-names!
    '(
        (flute "Flute" "Fl")
        (oboe "Oboe" "Ob")
        (clarinet "Clarinet in A" "Cl" "Clarinet")
        (horn "Horn in F" "Hn" "Horn")
        (bassoon "Bassoon" "Bn")
    ))

#(set-default-paper-size "b4")

Common_Main_Indent = 29
Common_Short_Indent = 4

named_staff =
    #(define-music-function
        (inst music)
        (symbol? ly:music?)
        #{
            \new Staff \with {
                instrumentName = #(instrument-name inst 'full)
                shortInstrumentName = #(instrument-name inst 'short)
            } $music
        #})

% Returns music expression, removing content tagged with 'score
Common_Part =
    #(define-music-function
        (music)
        (ly:music?)
        #{
            \removeWithTag #'score {
                \override Staff.Hairpin.to-barline = ##f
                $music
            }
        #})

% Returns a named staff, removing content tagged with 'part, and any cues
Common_Score_Staff =
    #(define-music-function
        (inst music)
        (symbol? ly:music?)
        #{ \named_staff $inst \removeWithTag #'part { \killCues $music } #})

niente = \override Hairpin #'circled-tip = ##t
noniente = \override Hairpin #'circled-tip = ##f
iw = #(define-scheme-function
    (mkup) (markup?)
    #{ \markup \whiteout \italic $mkup #})

AnnotatedDynamic =
#(define-music-function
    (dyn ann) (string? string?)
    (make-dynamic-script
        (markup #:line (
            #:whiteout #:dynamic dyn
            #:normal-text #:whiteout #:italic ann
            #:hspace -8.2
            )))
    )

dyn = #(define-scheme-function
    (expr) (string?)
    (make-dynamic-script
        (markup #:line (
            #:whiteout #:dynamic
            expr))))

hauptStart = \markup {
  \path #0.25 #'((moveto 0 0)
                 (lineto 0 -2)
                 (moveto 0 -1)
                 (lineto 1 -1)
                 (moveto 1 0)
                 (lineto 1 -2)
                 (moveto 1 0)
                 (lineto 1.8 0))
}

hauptStart = \markup {
    \path #0.25 #'(
        (moveto 0 0)
        (lineto 0 0.8)
        (moveto 0 0.8)
        (lineto 0.8 0.8)

    )
}
stimmeEnd = \markup {
  \path #0.25 #'((moveto 0 0)
                 (lineto 0.8 0)
                 (lineto 0.8 -0.8))
}
