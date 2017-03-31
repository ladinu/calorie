import Macros

bananaMedium = Ingredient "Banana (medium - 6.5oz w/ skin)" 0.4 27 1.3 (Unit 118 "g")
appleMedium = Ingredient "Apple (medium - 70z w/ refuse 3\" dia)" 0.3 25 0.5 (Unit 1 "medium")
appleLarge = Ingredient "Apple large" 0.4 31 0.6 (Unit 1 "large")
wheyplus = Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")
fishOil = Ingredient "Fish oil" 4 0 0 (Unit 4 "pills")

chickenSalad = Meal "Chicken salad" 6
  [
    Ingredient "Chicken breast, poached" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    Ingredient "Celery" 0 0 0 (Unit 0.5 "cup"),
    Ingredient "Onion" 0.1 15.2 1.4 (Unit 150 "g"),
    Ingredient "Raisins" 0.4 63 2.5 (Unit 80 "g"),
    Ingredient "Pita" 2 34 8 (Unit 1 "count") .* 6,
    Ingredient "Almonds" 35.4 13.8 14.9 (Unit 70 "g"),
    Ingredient "Greek Yogurt" 0 9 23 (Unit 227 "g") .* 1.3
  ]

hodi =    Meal "Curry" 1
    [
      Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz") .* 1,
      Ingredient "Tumeric" 0.2 1.4 0.2 (Unit 1 "tsp") .* 2,
      Ingredient "Fenugreek Seed (uluhal)" 0 0 0 (Unit 1 "few"),
      Ingredient "Lime juice" 0 0 0 (Unit 1 "tbsp"),
      Ingredient "Cinnamon" 0 0 0 (Unit 1 "bit"),
      Ingredient "Curry leaves" 0 0 0 (Unit 1 "few"),
      Ingredient "Chili powder" 0 0 0 (Unit 1 "few"),
      Ingredient "Coconut Milk" 14 3 2 (Unit 80 "g") .* 2,
      Ingredient "Green chili" 0.1 1 1 (Unit 14 "g") .* 3
    ]


veggies = (Ingredient "Mixed Veggies" 0 12 3 (Unit 90 "g")) .* 3


 -- Cheat day meals
yogurt = Ingredient "Yogurt with fruit" 5 31 7 (Unit 1 "cup")
mixedBerries = Ingredient "Frozen berries" 0 20 1 (Unit 140 "g") ./ 2
mixedVeggies = (Ingredient "Mixed Veggies" 0 12 3 (Unit 90 "g")) .* 2
rice = (Ingredient "White Rice (Raw)" 1.2 147.9 13.2 (Unit 6.5 "oz")) ./ 2
egg = Ingredient "Large Egg" 5 0.6 6 (Unit 50 "g")

oats = Meal "Overnight oats" 1
  [
      ((Ingredient "Oats, old fashioned" 3 27 5 (Unit 40 "g")) .* 2) ./ 3,
      Ingredient "Almond butter" 9.4 3.4 2.4 (Unit 17 "g"),
      appleLarge ./ 2,
      mixedBerries,
      (Ingredient "Non-fat Greek Yogurt (fage)" 0 9 23 (Unit 227 "g")) ./ 4,
      (Ingredient "Milk 2%" 4.9 12 8 (Unit 244 "g")) ./ 4,
      Ingredient "Honey" 0 17 0.1 (Unit 18 "g")
  ]

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

chickenAndRice =
  Meal "Chicken and Rice" 6
  [
    (Ingredient "White Rice (Raw)" 1.2 147.9 13.2 (Unit 6.5 "oz")) .* 3,
    Ingredient "Chicken breast, poached" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    (Ingredient "Olive oil" 14 0 0 (Unit 14 "g")) .* 3,
    Ingredient "Adobo sauce" 1 5 1 (Unit 7 "oz") .* 14,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz") .* 1
  ]

chard = Ingredient "Swiss chard" 0.2 3.7 1.8 (Unit 100 "g") .* 2.5
spinach = Ingredient "Spinach" 0.4 3.6 2.9 (Unit 100 "g") .* 3.8
kale = Ingredient "Kale" 0.7 10 3.3 (Unit 100 "g") .* 3.7

hash =
  Meal "Chicken and Veggie hash" 6
  [
    Ingredient "Chicken breast, poached" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz") .* 1,
    (Ingredient "Olive oil" 14 0 0 (Unit 14 "g")) .* 3,
    Ingredient "Potato" 0.6 72.1 8.6 (Unit 1 "lb") .* 3,
    Ingredient "Mushroom" 0.2 9.3 5.7 (Unit 8 "oz"),
    Ingredient "Brocolli" 0.3 5.8 2.5 (Unit 3.1 "oz") .* 3
  ]

fruit = Ingredient "Fruit cup" 2 60 5 (Unit 1 "lb")
avocado = Ingredient "avocado" 21 12 2.9 (Unit 150 "g")

tunaCasserole =
  Meal "Tuna casserole" 4
  [
    Ingredient "Tuna" 0 0 13 (Unit 2 "oz") .* 4.5, -- 12oz can
    Ingredient "Egg noodle" 3.3 40 7 (Unit 160 "g") .* 2, -- 2 cups
    Ingredient "Peas" 0.6 32 11 (Unit 8 "oz"),
    Ingredient "Cream of mushrooms" 6 8 1 (Unit 1.5 "cup") .* 2.5,
    Ingredient "Whole milk" 8 12 8 (Unit 244 "g")
    -- Ingredient "Cheddar cheese" 6 1 8 (Unit 1 "oz") .* 3
  ]

cut = [hash, bananaMedium, fishOil, chickenAndRice, (parippu chard)]
cheat =
  [
    yogurt, oats,
    bananaMedium,
    fishOil,
    rice .* 1,
    egg .* 1,
    (parippu chard),
    fruit,
    mixedBerries,
    wheyplus,
    Ingredient "Whole milk" 5 12 8 (Unit 244 "g")
  ]

bulk = [hash, bananaMedium, fishOil, chickenAndRice, (parippu kale), oats, bananaMedium, appleLarge ./ 2]

cheatTarget = target + (target * 0.3)
