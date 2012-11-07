(defun square (x) (* x x))
(defun expt-iter (b n)
  (defun iter (a b n)
    (cond ((= n 0) a)
	  ((= (mod n 2) 1)
	   (iter (* a b) (square b) (/ (- n 1) 2)))
	  (t (iter a (square b) (/ n 2)))))
  (iter 1 b n))
(expt-iter 2 10)
