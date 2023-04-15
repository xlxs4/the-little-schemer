(define (atom? x)
  (and (not (pair? x)) (not (null? x))))

;;; Atoms
;; Is it true that this is an atom?
;; 'atom

;; Yes, because atom is quoted.

;; Is it true that this is an atom?
;; 'turkey

;; Yes, because turkey is quoted.

;; Is it true that this is an atom?
;; '1492

;; Yes, because 1492 is quoted.

;; Is it true that this is an atom?
;; 'u

;; Yes, because u is quoted.

;; Is it true that this is an atom?
;; '*abc$

;; Yes, because *abc$ is quoted.

;;; Lists
;; Is it true that this is a list?
;; '(atom)

;; Yes, because it is a collection of one atom, atom, enclosed by parentheses.

;; Is it true that this is a list?
;; '(atom turkey or)

;; Yes, because it is a collection of three atoms, atom, turkey, and or.

;; Is it true that this is a list?
;; '(atom turkey) 'or

;; No, because this is two S-exprs. The first is a list of two atoms.
;; The second is an atom (it is not enclosed by parentheses).

;; Is it true that this is a list?
;; '((atom turkey) or)

;; Yes, because it is a collection of 2 S-exprs.
;; The first is a list containing 2 S-exprs. The other is an atom.

;;; S-expressions
;; Is it true that this is an S-expression?
;; 'xyz

;; Yes, because it is an atom.

;; Is it true that this is an S-expression?
;; '(x y z)

;; Yes, because it is a list.

;; Is it true that this is an S-expression?
;; '((x y) z)

;; Yes, because it is a list.

;; Is it true that this is a list?
;; '(how are you doing so far)

;; Yes, because it is a list.

;; How many S-expressions are in the list
;; '(how are you doing so far)
;; and what are they?

;; 6: the atoms how, are, you, doing, so, and far.

;; Is it true that this is a list?
;; '(((how) are) ((you) (doing so)) far)

;; Yes, because it is a collection of S-exprs enclosed by parentheses.

;; How many S-expressions are in the list
;; '(((how) are) ((you) (doing so)) far)
;; and what are they?

;; 3: the list '((how) are), the list '((you) (doing so)), and the atom far.

;; Is it true that this is a list?
;; '()

;; Yes, it is the empty list, i.e. a list containing no S-exprs.

;; Is it true that this is an atom?
;; '()

;; No, because it is a list.

;; Is it true that this is a list?
;; '(() () () ())

;; Yes, because it is a collection of 4 S-exprs; specifically, 4 empty lists.

;;; car
;; What is the car of l
;; where l is the argument
;; '(a b c)

;; a, because the atom a is the first S-expr of the list l.

;; What is the car of l
;; where
;; l is '((a b c) x y z)

;; (a b c), because (a b c) is the first S-expr of l.

;; What is the car of l
;; where l is 'hotdog

;; None. The primitive car is defined only for non-empty lists (and not atoms).

;; What is the car of l
;; where l is '()

;; None. The primitive car is defined only for non-empty lists.

;; What is the car of l
;; where
;; l is '(((hotdogs)) (and) (pickle) relish)

;; ((hotdogs)), because it is the first S-expr of l.

;; What is (car l)
;; where
;; l is '(((hotdogs)) (and) (pickle) relish)

;; ((hotdogs)), because (car l) is another way of saying "car of l".

;; What is (car (car l))
;; where
;; l is '(((hotdogs)) (and))

;; (hotdogs), because (car l) is ((hotdogs)), and (car l)
;; where
;; l is '((hotdogs))
;; is (hotdogs).

;;; cdr
;; What is the cdr of l
;; where
;; l is '(a b c)
;;
;; Note: "cdr" is pronounced "could-er."

;; (b c), because (b c) is the list l without (car l).

;; What is the cdr of l
;; where
;; l is '((a b c) x y z)

;; (x y z).

;; What is the cdr of l
;; where
;; l is '(hamburger)

;; The empty list.

;; What is (cdr l)
;; where
;; l is '((x) t r)

;; (t r).

;; What is (cdr a)
;; where
;; a is 'hotdogs

;; None. The primitive cdr is defined only for non-empty lists.

;; What is (cdr l)
;; where l is '()

;; None. The primitive cdr is defined only for non-empty lists.

;; What is (car (cdr l))
;; where
;; l is '((b) (xy) ((c)))

;; (xy), because (cdr l) is ((xy) ((c)))
;; and the car of that is (xy).

;; What is (cdr (cdr l))
;; where
;; l is '((b) (xy) ((c)))

;; (((c)))

;; What is (cdr (car l))
;; where
;; l is '(a (b (c)) d)

;; None, because (car l) is a, an atom.

;; What does car take as an argument?

;; A non-empty list.

;; What does cdr take as an argument?

;; A non-empty list.

;;; cons
;; What is the cons of the atom a and the list l
;; where a is 'peanut
;; and
;; l is '(butter and jelly)
;; This can also be written "(cons a l)".
;; Read: "cons the atom a onto the list l."

;; (peanut butter and jelly)

;; What is the cons of s and l
;; where s is '(banana and)
;; and
;; l is '(peanut butter and jelly)

;; ((banana and) peanut butter and jelly)

;; What is (cons s l)
;; where
;; s is '((help) this)
;; and
;; l is '(is very ((hard) to learn))

;; (((help) this) is very ((hard) to learn))

;; What does cons take as its arguments?

;; two arguments:
;; 1) any S-expr
;; 2) any list

;; What is (cons s l)
;; where
;; s is '(a b (c))
;; and
;; l is '()

;; ((a b (c)))

;; What is (cons s l)
;; where s is 'a
;; and l is '()

;; (a)

;; What is (cons s l)
;; where
;; s is '((a b c))
;; and l is 'b

;; None, because l is an atom, not a list.
;; In practice, (cons a b) works for any a and b, and
;; (car (cons a b)) = a
;; (cdr (cons a b)) = b

;; What is (cons s l)
;; where s is 'a
;; and l is 'b

;; None, because l is an atom, not a list.

;; What is (cons s (car l))
;; where s is 'a
;; and
;; l is '((b) c d)

;; (a b), since (car l) is the list (b).

;; What is (cons s (cdr l))
;; where s is 'a
;; and
;; l is '((b) c d)

;; (a c d)

;;; null
;; Is it true that the list l is the null list
;; where l is '()

;; Yes, because l consists of no S-exprs, it is empty.

;; What is (null? (quote ()))

;; True, because (quote ()) is '().

;; Is (null? l) true or false
;; where
;; l is (a b c)

;; #f

;; Is (null? a) true or false
;; where
;; a is 'spaghetti

;; You can't ask if an atom is null?.
;; In practice, (null? a) is #f if a is not the empty list.
