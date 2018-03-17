import Macros

parippu green = Meal "Parippu" 3
  [
    Ingredient "Lentil" 0.4 20 9 (Unit 100 "g") .* 1,
    Ingredient "Garlic" 0 1 0.2 (Unit 1 "clove") .* 3,
    Ingredient "Chili pepper" 0 4 0.8 (Unit 45 "g") .* 4,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz"),
    Ingredient "Tumeric" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Cumin" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Mustard seed powder" 0 1 0 (Unit 0.5 "tsp"),
    Ingredient "Cinnamon stick" 0 3 0 (Unit 1 "stick"),
    Ingredient "Curry leaves" 0 0 0 (Unit 1 "stalk"),
    Ingredient "Pandan leaves" 0 0 0 (Unit 1 "leaf"),
    Ingredient "Fenugreek seeds" 0 2.2 0 (Unit 0.5 "tsp"),
    green,
    Ingredient "Coconut Milk" 14 3 2 (Unit 80 "g")
  ]


chard = Ingredient "Swiss chard" 0.2 3.7 1.8 (Unit 100 "g") .* 2.5

chickenThigh = Meal "Oven roasted thigh" 6
  [
    Ingredient "Chicken thigh" 6 0 18 (Unit 4 "oz") .* 16
  ]

intake =
  [
    Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop"),
    Ingredient "White Rice (Cooked)" 1.2 112 10.8 (Unit 400 "g"),
    Ingredient "Apple large" 0.4 31 0.6 (Unit 1 "large"),
    Ingredient "Banana (large)" 0.4 31 1.5  (Unit 136 "g"),
    chickenThigh,
    (parippu chard)
  ]
