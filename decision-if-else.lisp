(defparameter *name* "a")
(defparameter *age* 18)

(defmacro ? (param test &key yes no)
    (if (concatenate 'list test '(param)) yes no))

(print
    (? *name* '(string= "a")
      :yes (? *age* '(= 18)
             :yes 8 
             :no  100)
      :no  1000))

(print (eval (read-from-string "(1+ 8)")))
