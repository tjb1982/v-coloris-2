\include "./instruments.ly"


#(define (add-articulation* artype music)
    (if (ly:music? music)
        (let ((elements (ly:music-property music 'elements)))
            (cond
                ((not (null? elements))
                 (set! (ly:music-property music 'elements)
                       (map (lambda (el)
                              (add-articulation* artype el))
                            elements)
                            ))
                ((eq? 'NoteEvent (ly:music-property music 'name))
                 (set! (ly:music-property music 'articulations)
                       (cons (make-music 'ArticulationEvent 'articulation-type artype)
                             (ly:music-property music 'articulations))))
                )))
    music)


#(define (half-aeolian-notehead grob)
    (let* ((base (ly:note-head::print grob))
           (color (x11-color 'black))
           (bg-color (rgb-color 0.75 0.75 0.75))
           (y-ext (ly:stencil-extent base Y))
           (y-center (interval-center y-ext))
           (y-bottom (car y-ext))
           (radius (abs (- y-bottom y-center)))
        ;    (portion (/ 1 5))
        ;    (radius (* radius (- 1 portion)))
          )
        ; (ly:message "~a ~a" portion radius)
        ; (exit 0)
        (ly:stencil-add
            (ly:stencil-translate
                ; (make-circle-stencil 0.78 0.125 #f)
                ; (make-circle-stencil 0.55 0.125 #f)
                (stencil-with-color (make-circle-stencil radius 0.05 #t) bg-color)
                (cons 0.55 0.03))
            (stencil-with-color base color)
            )
        (stencil-with-color base color)
    )
)

Common_Main_Indent = 29
Common_Short_Indent = 4

named_staff =
    #(define-music-function
        (inst music)
        (symbol? ly:music?)
        #{
            \new Staff \with {
                instrumentName = #(instrument-name inst 'full)
                %shortInstrumentName = #(instrument-name inst 'short)
            } $music
        #})

% Returns music expression, removing content tagged with 'score
Common_Part =
    #(define-music-function
        (music)
        (ly:music?)
        #{
            \override Staff.Hairpin.to-barline = ##f
            \removeWithTag #'midi
            \removeWithTag #'score
            \compressMMRests
            $music
        #})

% Returns a named staff, removing content tagged with 'part, and any cues
Common_Score_Staff =
    #(define-music-function
        (inst music)
        (symbol? ly:music?)
        #{
            \named_staff $inst
                \removeWithTag #'part
                \removeWithTag #'midi
                \killCues
                $music
        #})

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

textSpannerEnd = \markup {
    \path #0.1
        #'((moveto 0 0)
           (lineto 0.8 0)
           (lineto 0.8 -0.8))
}

aeolian = #(define-music-function (music) (ly:music?)
    #{
        \override NoteHead.style = #'triangle
        \override NoteHead.color = #(x11-color 'gray60)
        \override NoteHead.color = #(x11-color 'red)
        #music
        \revert NoteHead.style
        \revert NoteHead.color
    #}
)

halfaeolian = #(define-music-function (music) (ly:music?)
    #{
        \aeolian {
            \override NoteHead.color = #(x11-color 'black)
            #music
            \revert NoteHead.color
        }
    #}
)

art = #(define-music-function
    (artype music) (string? ly:music?)
    (add-articulation* artype music)
)

setTextSpanText = #(define-music-function (text) (string?)
    #{
        \override TextSpanner.bound-details.left.text = \markup {
            \whiteout \normal-text $text
        }
    #}
)
