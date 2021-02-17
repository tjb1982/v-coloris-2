(define (string-range count str list)
    (if (zero? count)
        list
        (string-range
            (- count 1)
            str
            (cons str list))))
