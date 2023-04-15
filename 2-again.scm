(define (atom? x)
  (and (not (pair? x)) (not (null? x))))

;;; lat
;; True or false: (lat? l)
;; where
;; l is '(Jack Sprat could eat no chicken fat)

;; #t. Note: lat is "list of atoms"

;; True or false: (lat? l)
;; where
;; l is '((Jack) Sprat could eat no chicken fat)

;; #f

;; True or false: (lat? l)
;; where
;; l is '(Jack (Sprat could) eat no chicken fat)

;; #f

;; True or false: (lat? l)
;; where l is '()

;; #t, because it does not contain non-atoms.

;; True or false: a lat is a list of atoms.
;; #t

;; Write the function lat? using some, but not
;; necessarily all, of the following functions:
;; car cdr cons null? atom? and eq?

(define (lat? x)
  (cond ((null? x) #t)
        ((atom? x) #f)
        ((atom? (car x))
         (lat? (cdr x)))
        (else #f)))

;; Note: book says
;; "You were not expected to be able to do this
;; yet, becacuse you are still missing some
;; ingredients. Go on to the next question.
;; Good luck.", but, alas.

;; Note: book defines lat? as
;;
;; (define lat?
;;   (lambda (l)
;;     (cond
;;      ((null? l) #t)
;;      ((atom? (car l)) (lat? (cdr l)))
;;      (else #f))))
;;
;; which is fine, but you can't ask the car of a non-list.
;; (non-pair, at least in guile). Anyways!

;; What is the value of (lat? l)
;; where
;; l is the argument '(bacon and eggs)

;; #t

;; How do we determine the answer #t for the
;; application
;; (lat? l)

;; We don't know anything about prodecure application
;; and evaluation, or environments. What we do know,
;; is that lat?, as was defined, asks some trivial questions.
;; Is l null? If so, it is also a lat.
;; Is l an atom? I.e., was l not a list? If so, it is not a lat.
;; Is the first element of l an atom? If not, l is not a lat.
;; If yes, ask the same on ls, where ls is (cdr l).
;; We can go over this process mentally to answer these questions.
