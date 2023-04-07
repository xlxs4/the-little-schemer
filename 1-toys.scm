(define (atom? x)
  (and (not (pair? x)) (not (null? x))))
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
