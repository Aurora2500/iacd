(deftemplate recipe
  (slot product (type STRING))
  (slot yield (type INTEGER))
  (multislot ingredients)
  (slot time)
)

(deffunction ingredient_count (?i)
  (div (length$ ?i) 2)
)

(deffunction nth-ingredient (?i $?n)
  (nth$ (- (* 2 ?i) 1) $?n)
)

(defrule get_ingredients
  ?req <- (request ?product ?level)
  (recipe (product ?product) (ingredients $?ingredients))
  =>
  (printout t "Requesting " (ingredient_count $?ingredients) " ingredients for " ?product " (level " ?level ")" crlf)
  (loop-for-count (?i (ingredient_count $?ingredients))
    (printout t ?i ".- Requesting " (nth-ingredient ?i $?ingredients) crlf)
    (assert (request (nth-ingredient ?i $?ingredients) (+ 1 ?level)))
  )
  (retract ?req)
)