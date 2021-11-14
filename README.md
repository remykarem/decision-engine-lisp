# Decision engine

Representing rules of a decision engine symbolically, then evaluate.

```lisp
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
```

Pet project, will delete later.

```sh
sbcl --load decision-if-else.lisp --quit
```
