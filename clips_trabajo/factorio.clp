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

(deffunction nth-count (?i $?n)
  (nth$ (* 2 ?i) $?n)
)

(deffacts raw_materials
  (raw_material "water")
  (raw_material "crude-oil")
  (raw_material "coal")
  (raw_material "iron-ore")
  (raw_material "copper-ore")
  (raw_material "stone")
  (raw_material "uranium-ore")
  (raw_material "raw-fish")
  (raw_material "wood")
)

(deftemplate raw_materials_counter
  (slot product (type STRING))
  (slot count (type INTEGER))
)

(defrule raw_materials_counters
  (declare (salience 100))
  (raw_material ?product)
  =>
  (assert (raw_materials_counter (product ?product) (count 0)))
)

;(defrule get_ingredients
;  ?req <- (request ?product ?level)
;  (recipe (product ?product) (ingredients $?ingredients))
;  =>
;  (printout t "Requesting " (ingredient_count $?ingredients) " ingredients for " ?product " (level " ?level ")" crlf)
;  (loop-for-count (?i (ingredient_count $?ingredients))
;    (printout t ?i ".- Requesting " (nth-ingredient ?i $?ingredients) crlf)
;    (assert (request (nth-ingredient ?i $?ingredients) (+ 1 ?level)))
;  )
;  (retract ?req)
;)

(defrule init_ingredients_tree
  (request ?product ?ppm)
  =>
  (assert (request_tree ?product ?ppm (gensym) nil)))

(defrule generate_ingredients_tree
  (declare (salience 90))
  (request_tree ?product ?ppm ?id ?)
  (recipe (product ?product) (ingredients $?ingredients) (yield ?yield))
  =>
  (loop-for-count (?i (ingredient_count $?ingredients))
    (bind ?ingredient (nth-ingredient ?i $?ingredients))
    (bind ?ingredient_count (nth-count ?i $?ingredients))
    (bind ?needed_ppm (* ?ppm (/ ?ingredient_count ?yield)))
    (do-for-all-facts ((?rm raw_materials_counter))
      (eq ?rm:product ?ingredient)
      (modify ?rm (count (+ ?rm:count ?needed_ppm)))
    )
    (assert (request_tree ?ingredient ?needed_ppm (gensym) ?id))
  )
)
