(defparameter *name* "a")
(defparameter *age* 18)
(defparameter *timez* 18)
(defparameter *ncols* 3)

(defparameter *rules* '(
    name    age     timez   then
    --------------------------------
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

(defun partition-list (list parts &key (last-part-longer nil))
  ;; https://stackoverflow.com/a/47891413/4570466
  ;; Partition LIST into PARTS parts.  They will all be the same
  ;; length except the last one which will be shorter or, if
  ;; LAST-PART-LONGER is true, longer.  Doesn't deal with the case
  ;; where there are less than PARTS elements in LIST at all (it does
  ;; something, but it may not be sensible).
  (loop with size = (if last-part-longer
                        (floor (length list) parts)
                      (ceiling (length list) parts))
        and tail = list
        for part upfrom 1
        while tail
        collect (loop for pt on tail
                      for i upfrom 0
                      while (or (and last-part-longer (= part parts))
                                (< i size))
                      collect (first pt)
                      finally (setf tail pt))))

(defun first-n (n li)
  "Returns first n elements of the list."
  (loop for i below n
     collect (nth i li)))
