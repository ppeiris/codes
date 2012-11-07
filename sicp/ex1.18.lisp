(defun my-double (x) (+ x x))
(defun halve (x) (/ x 2))
(defun odd? (x)
  (if (= (mod x 2) 1)
      t
      nil))
(defun fast* (a b)
  (defun iter (c a b)
    (cond ((= b 0) c)
	  ((odd? b) (iter (+ c a) a (- b 1)))
	  (t (iter c (my-double a) (halve b)))))
  (iter 0 a b))
(fast* 2 10)