import Macros

parippu green = Meal "Parippu" 3
  [
    Ingredient "Lentil" 0.4 20 9 (Unit 100 "g") .* 1.5,
    Ingredient "Garlic" 0 1 0.2 (Unit 1 "clove") .* 3,
    Ingredient "Chili pepper" 0 4 0.8 (Unit 45 "g") .* 4,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz"),
    Ingredient "Tumeric" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Cumin" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Curry leaves" 0 0 0 (Unit 1 "stalk"),
    Ingredient "Fenugreek seeds" 0 2.2 0 (Unit 0.5 "tsp"),
    green,
    Ingredient "Coconut Milk" 14 3 2 (Unit 80 "g")
  ]


chard = Ingredient "Swiss chard" 0.2 3.7 1.8 (Unit 100 "g") .* 2.5

chickenThigh = Meal "Oven roasted thigh" 6
  [
    Ingredient "Chicken thigh" 9 0 18 (Unit 4 "oz") .* 16
  ]

tunaCasserole =
  Meal "Tuna casserole" 4
  [
    Ingredient "Tuna" 0.5 0 11 (Unit 2 "oz") .* 4.5, -- 12oz can
    Ingredient "Egg noodle" 2.5 40 8 (Unit 56 "g") .* 4,
    Ingredient "Peas" 0 12 5 (Unit 90 "g") .* 2.5,
    Ingredient "Cream of mushrooms" 9 9 2 (Unit 1.5 "cup") .* 2.5,
    Ingredient "Whole milk" 3.3 5.4 3.3 (Unit 100 "g")
    --Ingredient "Cheddar cheese" 10 2 6 (Unit 1 "oz") .* 0
  ]

intake =
  [
    Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop"),
    Ingredient "Milk (whole 3.25%)" 8 12 8 (Unit 244 "g"),
    Ingredient "Greek Yogurt" 0 9 23 (Unit 227 "g"),
    Ingredient "Sugar" 0 20 0 (Unit 20 "g"),
    Ingredient "White Rice (Cooked)" 1.2 112 10.8 (Unit 400 "g"),
    Ingredient "Apple large" 0.4 31 0.6 (Unit 1 "large"),
    --Ingredient "Banana (large)" 0.4 31 1.5  (Unit 136 "g"),
    Ingredient "Large egg" 5 0.6 6  (Unit 56 "g") .* 2,
    chickenThigh,
    tunaCasserole,
    (parippu chard)
  ]
