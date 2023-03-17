(deftemplate recipe
  (slot product (type STRING))
  (slot product_number (type INTEGER))
  (multislot ingredients)
  (multislot ingredient_number)
  (slot time)
)

(deffacts existing_recipes
  (recipe
    (product "plastic")
    (product_number 1)
    (ingredients "petroleum" "coal")
    (ingredient_number 20 1)
    (time 1)
  )

  (recipe
    (product "copper cable")
    (product_number 2)
    (ingredients "copper plates")
    (ingredient_number 1)
    (time 0.5)
  )
)

(defrule get_ingredients
  ?req <- (request ?product)
  (recipe (product ?product) (ingredients $?ingredients))
  =>
  (foreach ?ingredient $?ingredients
    (assert (request ?ingredient))
    (printout t "Requesting " ?ingredient crlf)
  )
  (retract ?req)
)