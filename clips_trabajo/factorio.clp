(deftemplate recipe
  (slot product (type STRING))
  (slot yield (type INTEGER))
  (multislot ingredients)
  (slot time (type FLOAT))
  (slot type (type STRING))
)

(deftemplate factory
  (slot name (type STRING))
  (slot speed (type FLOAT))
  (slot power (type INTEGER))
  (slot power_type)
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

(deffunction floor (?x)
  (integer ?x)
)

(deffunction ceil (?x)
  (if (eq (integer ?x) ?x)
    then
    (integer ?x)
    else
    (+ (integer ?x) 1)
  )
)

(defrule init_ingredients_tree
  (request ?product ?ppm)
  =>
  (assert (request_tree ?product ?ppm (gensym) nil)))

(defrule generate_ingredients_tree
  (declare (salience 90))
  (request_tree ?product ?ppm ?id ?)
  (recipe
    (product ?product) (ingredients $?ingredients)
    (yield ?yield) (type ?recipe_ty) (time ?time))
  (factory_capability ?fac ?recipe_ty)
  (factory (name ?fac) (speed ?speed) (power ?power) (power_type ?power_type))
  (available_factory ?fac)
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
  (bind ?fac_count (ceil (/ (* ?ppm ?time) (* ?speed ?yield) 60)))
  (assert (factories_needed
    ?fac
    ?fac_count
    ?id
    ))
  (assert (factory_power
    ?fac
    (ceil (* ?power ?fac_count))
    ?power_type
    ?id
    ))
)

(deffacts power_supplies
  (power_supply "solar-pannel" "electric" 60000)
  (power_supply "coal" "burner" 4000000)
)

(defrule power_supply
  (factory_power ?fac ?power_needed ?power_type ?id)
  (power_supply ?name ?power_type ?power_supply)
  =>
  (bind ?count (ceil (/ ?power_needed ?power_supply)))
  (assert (power_source ?name ?count ?id))
)
