;;
; var to be set by client code using `set-instrument-names!`
; should be a list of lists; e.g.,
; '(
;     (flute "Flute" "Fl")
;     (oboe "Oboe" "Ob")
;     (clarinet "Clarinet in A" "Cl" "Clarinet")
;     (horn "Horn in F" "Hn" "Horn")
;     (bassoon "Bassoon" "Bn")
; )
;;
(define -instrument-names '(()))

(define* (-cons-instrument-conf label full short #:optional (common full))
    `(,label .
        ((full . ,full)
        (short . ,short)
        (common . ,common))))

(define (-instrument-conf)
    (map
        (lambda (x) (apply -cons-instrument-conf x))
        (filter
            (lambda (x) (not (null? x)))
            -instrument-names)))

(define (instrument-name inst label)
    (assoc-ref (assoc-ref (-instrument-conf) inst) label))

;; Returns a string of the instrument names by "label" concatenated with ", "
;; with penultimate "and" (without oxford comma)
(define (instrument-listing label)
    (let ((inames (-instrument-conf)))
        (if (not (null? inames))
            (fold
                (lambda (c p)
                    (let ((name (string-downcase (assoc-ref (cdr c) label))))
                        (string-append
                            p
                            (cond
                                ((equal? c (last inames))
                                 (string-append " and " name))

                                ((not (equal? c (car inames)))
                                 (string-append ", " name))

                                (else name)))))
                "for "
                inames))))

(define (set-instrument-names! x)
    (set! -instrument-names x))
