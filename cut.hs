import Macros
import Recipes

bananaMedium = Ingredient "Banana (medium - 6.5oz w/ skin)" 0.4 27 1.3 (Unit 118 "g")
appleMedium = Ingredient "Apple (medium - 70z w/ refuse 3\" dia)" 0.3 25 0.5 (Unit 1 "medium")
appleLarge = Ingredient "Apple large" 0.4 31 0.6 (Unit 1 "large")
wheyplus = Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")
fishOil = Ingredient "Fish oil" 4 0 0 (Unit 4 "pills")
veggies = (Ingredient "Mixed Veggies" 0 12 3 (Unit 90 "g")) .* 3


 -- Cheat day meals
yogurt = Ingredient "Yogurt with fruit" 5 31 7 (Unit 1 "cup")
mixedBerries = Ingredient "Frozen berries" 0 20 1 (Unit 140 "g") ./ 2
mixedVeggies = (Ingredient "Mixed Veggies" 0 12 3 (Unit 90 "g")) .* 2
egg = Ingredient "Large Egg" 5 0.6 6 (Unit 50 "g")
marinaraSauce = Meal "Sauce" 6 [Ingredient "Marinara Sauce" 1 10 2 (Unit 1 "cup?") .* 5]
rice = Meal "White Rice" 6 [Ingredient "White Rice (Raw)" 1.2 142 12.8 (Unit 180 "g") .* 6]
sausage = Ingredient "Vegan sausage" 10 11 24 (Unit 1 "link")

parippu green = Meal "Parippu" 4
  [
    Ingredient "Lentil" 0.4 20 9 (Unit 100 "g") .* 2,
    Ingredient "Garlic" 0 1 0.2 (Unit 1 "clove") .* 3,
    Ingredient "Chili pepper" 0 4 0.8 (Unit 45 "g") .* 4,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz"),
    Ingredient "Curry powder" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Chili powder" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Cumin" 0 1 0 (Unit 1 "tsp"),
    Ingredient "Mustard seed powder" 0 1 0 (Unit 0.5 "tsp"),
    Ingredient "Cinnamon stick" 0 3 0 (Unit 1 "stick"),
    Ingredient "Curry leaves" 0 0 0 (Unit 1 "stalk"),
    Ingredient "Pandan leaves" 0 0 0 (Unit 1 "leaf"),
    Ingredient "Fenugreek seeds" 0 2.2 0 (Unit 0.5 "tsp"),
    green,
    Ingredient "Coconut Milk" 14 3 2 (Unit 80 "g") .* 2
  ]


chard = Ingredient "Swiss chard" 0.2 3.7 1.8 (Unit 100 "g") .* 2.5


chickenThigh = Meal "Oven roasted thigh" 6
  [
    Ingredient "Chicken thigh" 9 0 18 (Unit 4 "oz") .* 12
  ]

cut =
  [
    wheyplus .* 2,
    rice,
    Ingredient "Greek Yogurt" 0 9 23 (Unit 227 "g"),
    Ingredient "Syrup" 0 30 0 (Unit 30 "g"),
    chickenThigh,
    (parippu chard)
  ]

bulk =
  [
    (parippu chard),
    Ingredient "Cooked white rice" 1.1 112 10.8 (Unit 400 "g"),
    Ingredient "2% Milk" 5 12.5 8.2 (Unit 1 "cup"),
    Ingredient "Chicken thigh" 54 0 266 (Unit 3 "lb") ./ 6,
    Ingredient "Greek Yogurt" 0 9 23 (Unit 227 "g"),
    Ingredient "Syrup" 0 30 0 (Unit 30 "g"),
    bananaMedium,
    turkeyBurito,
    -- overNightOats,
    wheyplus
  ]

bulkTarget = tdee + (0.10 * tdee)
