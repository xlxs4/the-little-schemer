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

;;; atom
;; Is it true or false that s is an atom
;; where s is 'Harry

;; #t

;; Is (atom? s) true or false
;; where
;; s is 'Harry

;; #t

;; Is (atom? s) true or false
;; where
;; s is '(Harry had a heap of apples)

;; #f

;; How many arguments does atom? take and
;; what are they?

;; It takes any argument, the argument can be any S-expr.

;; Is (atom? (car l)) true or false
;; where
;; l is '(Harry had a heap of apples)

;; #t, because (car l) is 'Harry

;; Is (atom? (cdr l)) true or false
;; where
;; l is '(Harry had a heap of apples)

;; #f

;; Is (atom? (cdr l)) true or false
;; where
;; l is '(Harry)

;; #f, because the empty list is not an atom.

;; Is (atom? (car (cdr l))) true or false
;; where
;; l is '(swing low sweet cherry oat)

;; #t

;; Is (atom? (car (cdr l))) true or false
;; where
;; l is '(swing (low sweet) cherry oat)

;; #f

;;; eq
;; True or false: a1 and a2 are the same atom
;; where a1 is 'Harry
;; and
;; a2 is 'Harry

;; #t

;; Is (eq? a1 a2) true or false
;; where a1 is 'Harry
;; and
;; a2 is 'Harry

;; #t

;; Is (eq? a1 a2) true or false
;; where a1 is 'margarine
;; and
;; a2 is 'butter

;; #f

;; How many arguments does eq? take and
;; what are they?

;; Two arguments.
;; 1) A non-numeric atom
;; 2) A non-numeric atom

;; Is (eq? l1 l2) true or false
;; where l1 is '()
;; and
;; l2 is '(strawberry)

;; None, because () and (strawberry) are lists.
;; In practice, eq? supports lists as arguments.
;; In that case, two lists are equal if they are the same list.

;; Is (eq? n1 n2) true or false
;; where n1 is 6
;; and
;; n2 is 7

;; None, because 6 and 7 are numeric atoms.
;; In practice, eq? supports some numeric atoms (i.e., numbers).

;; Is (eq? (car l) a) true or false
;; where
;; l is '(Mary had a little lamb chop)
;; and
;; a is 'Mary

;; #t

;; Is (eq? (cdr l) a) true or false
;; where
;; l is '(soured milk)
;; and
;; a is 'milk

;; None, eq? doesn't take lists as arguments, and (cdr l) is a list.
;; In practice, #f.

;; Is (eq? (car l) (car (cdr l))) true or false
;; where
;; l is '(beans beans we need jelly beans)

;; #t
