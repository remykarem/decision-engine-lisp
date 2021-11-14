(defun yesp (y)
  (or (string-equal y "y") (string= y "")))

(defun ask (qn &key y n)
    (print (concatenate 'string qn " (y/n)"))
    (finish-output)
    (let ((response (read-line)))
        (if (yesp response)
            (if (stringp y) (print y) (apply #'ask y))
            (if (stringp n) (print n) (apply #'ask n)))))

(defun start (qns)
    (apply #'ask qns))

(start 
    '("Have you learned this material before?"
        :y ("You from Singapore?"
            :y "Awesome!"
            :n "Come to Singapore then?")
        :n ("Are there equations on the screen?" 
            :y "1x" 
            :n ("Is the lecturer speaking quickly?"
                :y "1.25x"
                :n "1.5x"))))
