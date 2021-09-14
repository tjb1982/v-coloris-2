#(define coltype #:column)

% '(symbol full short common, title)
#(define -instrument-names
    `(
        (flute "Flute" "Fl")
        (oboe "Oboe" "Ob")
        (clarinet ,(markup
                    #:center-column
                      (#:line ("Clarinet")
                       #:line ("in A")))
                  "Cl"
                  "Clarinet"
                  "Clarinet in A")
        (horn ,(markup
                #:center-column
                  (#:line ("Horn")
                   #:line ("in F")))
              "Hn"
              "Horn"
              "Horn in F")
        (bassoon "Bassoon" "Bn")
    ))


#(define* (-cons-instrument-conf label full short #:optional (common full) (title full))
    `(,label .
        ((full . ,full)
        (short . ,short)
        (common . ,common)
        (title . ,title))))


#(define (-instrument-conf)
    (map
        (lambda (x) (apply -cons-instrument-conf x))
        (filter
            (lambda (x) (not (null? x)))
            -instrument-names)))


#(define (instrument-name inst label)
    (assoc-ref (assoc-ref (-instrument-conf) inst) label))


% Returns a string of the instrument names by "label" concatenated with ", "
% with penultimate "and" (without oxford comma)
#(define (instrument-listing label)
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
