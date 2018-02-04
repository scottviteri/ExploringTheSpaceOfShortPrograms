(define S (lambda (x) (lambda (y) (lambda (z) ((x z)(y z))))))
(define K (lambda (x) (lambda (y) x)))
(define I (lambda (x) x))
(define zero (lambda (c) (c (lambda (f) ((f S) K)))))
(define one (lambda (c) (lambda (L)
              (L (lambda (l) (lambda (R)
                       (R (lambda (r) (c (l r))))))))))

; interrogate: ^f.fIIIK: maps zero onto K, one onto KI, and output onto K(KI).
(define interrogate (lambda (f) ((((f I) I) I) K)))
(define output (K (K (K (K (K (K I)))))))

(define print 
  ((lambda (x) (x x))
   (lambda (self)
     (lambda (c)
       (display (((interrogate c) "0") "1"))
       (self self)))))

;(define (go str)
;  (cond 
;    ((null? str) (lambda (c) (c I))) 
;    (else (if (eq? #\0 (car str)) ((go (cdr str)) zero) ((go (cdr str)) one)))))

;(display (((go (list #\0 #\1 #\1)) output) print))

(let ((p (open-input-file "rev2.zot")))
    (do ((v (lambda (c) (c I)) (if (eq? #\0 (read-char p)) (v zero) (v one))))
        ((eof-object? (peek-char)) ((v output) print))))

;(let ((p (open-input-file "rev2.zot")))
;  (let f ((x (read p)))
;    (if (eof-object? x)
;      (begin
;        (close-input-port p)
;        '())
;    (cons x (f (read p))))))


;(define q ((((lambda (c) (c I)) one) zero) one))
;((q output) print)


