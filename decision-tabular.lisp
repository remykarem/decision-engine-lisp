(defparameter *name* "a")
(defparameter *age* 18)
(defparameter *timez* 18)
(defparameter *ncols* 3)
(defparameter *rules* '(
  name    age     timez   then
  (= 8)   (> 18)  (= 1)   ("good")
  (= 9)   (< 3)   (> 1)   ("boo")
  (= 9)   (< 2)   (< 1)   ("boo1")
))

(set (nth 0 *rules*) *name*)
(set (nth 1 *rules*) *age*)
(set (nth 2 *rules*) *timez*)

(print name)
(print age)
(print timez)

(defun first-n (n li)
  "Returns first n elements of the list."
  (loop for i below n
     collect (nth i li)))
