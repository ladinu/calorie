import Macros

bananaMedium = Ingredient "Banana (medium - 6.5oz w/ skin)" 0.4 27 1.3 (Unit 1 "medium")
appleMedium = Ingredient "Apple (medium - 70z w/ refuse 3\" dia)" 0.3 25 0.5 (Unit 1 "medium")
appleLarge = Ingredient "Apple large" 0.4 31 0.6 (Unit 1 "large")
wheyplus = Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")
pb2 = Ingredient "PB2 - Traditional" 1.5 5 5 (Unit 12 "g")
ricemilk = Ingredient "Rice Milk" 2.5 23 1 (Unit 1 "Cup")
eggLarge = Ingredient "Egg" 5 0 6 (Unit 1 "large")
fishOil = Ingredient "Fish oil" 4 0 0 (Unit 4 "pills")

greekYogurt = Ingredient "Greek yogurt" 0 9 23 (Unit 227 "g") ./ 2

shake = Meal "Whey and Ricemilk Shake" 1 [ricemilk, wheyplus]

m0 =
  Meal "Chicken Enchilada Rice Casserolse" 6
  [
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup")),
    Ingredient "Chicken Breast (Raw)" 11.2 0 209.5 (Unit 2 "lb"),
    (Ingredient "Enchilada Sauce" 0 4 0 (Unit 0.25 "Cup")) .* 13,
    (Ingredient "Refried Beans" 0 16 6 (Unit 0.5 "Cup")) .* 3.5,
    Ingredient "Corn kernels" 0 18 0 (Unit 90 "g"),
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 4,
    Ingredient "Black Beans (drained)" 0.5 22 7 (Unit 130 "g"),
    Ingredient "Onion" 0 11.1 1 (Unit 110 "g")
  ]

m1 =
  Meal "Baked Banana Walnut Rasin Oatmeal" 6
  [
    Ingredient "Almon Milk, unsweetened" 2.4 8 1 (Unit 1 "cup"),
    eggLarge,
    (Ingredient "Walnut" 19 4 4.3 (Unit 30 "g")),
    pb2 .* 3,
    (Ingredient "Cocoa powder (Hershey's)" 0.5 3 1 (Unit 5 "g")),

    bananaMedium .* 3,
    (Ingredient "Quaker Oats - Old Fashioned" 3 27 5 (Unit 40 "g")) .* 3.5,
    (Ingredient "Rasins" 0 31 1 (Unit 40 "g")) .* 1.5,

    (Ingredient "Baking powder" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Baking soda" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp"))
  ]

m2 =
  Meal "Mexican beef and rice casserole" 6
  [
    (Ingredient "Ground beef, (96:4)" 4.5 0 24 (Unit 4 "oz")) .* 4,
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 4,
    (Ingredient "White Rice, Raw" 2.4 295.8 26.4 (Unit 2 "Cup")) ./ 2,
    (Ingredient "Spinach, raw" 1.3 11.9 9.4 (Unit 11.5 "oz")),
    (Ingredient "Corn kernels" 0 21 2 (Unit 90 "g")) .* 2,
    (Ingredient "Salsa" 0 2 0 (Unit 30 "ml")) .* 4,
    (Ingredient "Onion" 0 11.1 1 (Unit 110 "g")),
    (Ingredient "Fire roasted tomato" 0 6 1 (Unit 123 "g")) .* 3.5,
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")) .* 2
  ]

m3 = Meal "Sweet Potato Breakfast Burrito" 8
  [
    (Ingredient "Olive oil" 0 14 0 (Unit 14 "g")),
    (Ingredient "Onion" 0 11.1 1 (Unit 110 "g")) .* 2.5,
    (Ingredient "Garlic" 0 1 0 (Unit 1 "clove(s)")) .* 3,
    (Ingredient "Sweet Potato, cubed" 0.1 57 4.5 (Unit 10 "oz")),
    (Ingredient "Zucchini, diced" 0.4 4.3 1.5 (Unit 4.4 "oz")),
    (Ingredient "Chili Powder" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Cumin" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Ground pepper" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Tortillas" 4.5 23 6 (Unit 1 "serving")) .* 8,
    Meal "Scrambled Eggs" 1
    [
      eggLarge .* 8,
      (Ingredient "Spinach, finely chopped" 0.2 2.2 1.7 (Unit 2.2 "oz")),
      (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp")),
      (Ingredient "Ground pepper" 0 0 0 (Unit 0.25 "tsp")),
      (Ingredient "Cooking spray" 0 0 0 (Unit 1 "spray"))
    ]
  ]

m4 = Meal "Chicken wrap" 6
  [
    Ingredient "Chicken breast" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    Ingredient "Oil" 15.0 0 0 (Unit 15 "g"),
    Ingredient "Pita" 2 34 8 (Unit 1 "count") .* 6
  ]

m5 = Meal "Dinner" 6
  [
    Ingredient "Cream of chicken" 5 11 2 (Unit 0.5 "cup") .* 5,
    Ingredient "Pasta shells" 1 43 6 (Unit 2 "oz") .* 8,
    Ingredient "Broccoli" 2.2 39.8 16.9 (Unit 600 "g"),
    Ingredient "Chicken breast" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    Ingredient "Cheese" 9 0 7 (Unit 28 "g") .* 4
  ]

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

m6 = Meal "Dinner" 6
  [
    Ingredient "Cream of chicken" 5 11 2 (Unit 0.5 "cup") .* 5,
    -- Ingredient "Pasta shells" 1 43 6 (Unit 2 "oz") .* 8,
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup")),
    Ingredient "Broccoli" 2.2 39.8 16.9 (Unit 600 "g"),
    Ingredient "Chicken breast" 5.6 0 104.7 (Unit 1 "lb") .* 2,
    Ingredient "Cheese" 9 0 7 (Unit 28 "g") .* 4
  ]

m7 = Meal "Dinner" 6
  [
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup")),
    Ingredient "Chicken breast" 5.6 0 104.7 (Unit 1 "lb") .* 1,
    Ingredient "Shrimp" 7.8 4.1 92.1 (Unit 1 "lb") .* 1,
    Ingredient "Tomato" 0.1 2.4 0.5 (Unit 1 "tomato"),
    Ingredient "Onion" 0.1 5.2 0.5 (Unit 60 "g"),
    Ingredient "Bell pepper" 0.3 7 1.3 (Unit 150 "g"),
    Ingredient "Green chilli" 0.2 10.7 2.3 (Unit 4 "oz"),
    Ingredient "Chicken broth" 0.5 2 1 (Unit 1 "cup") .* 5,
    Ingredient "Tomato Sauce" 0 4 1 (Unit 61 "g") .* 3.5,
    Ingredient "Water" 0 0 0 (Unit 295 "g"),
    Ingredient "Oil" 14 0 0 (Unit 1 "tbsp") .* 3
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

chickenAndRice =
  Meal "Chicken and Rice" 6
  [
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 1 "Cup")) .* 3,
    Ingredient "Chicken thigh" 17.7 0 89.1 (Unit 1 "lb"),
    Ingredient "Adobo sauce" 0.5 2 1 (Unit 7 "oz") .* 1,
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz") .* 1,
    hodi
  ]

oats = Meal "Overnight oats" 1
  [
      ((Ingredient "Oats, old fashioned" 3 27 5 (Unit 40 "g")) .* 2) ./ 3,
      Ingredient "Greek yogurt" 0 9 23 (Unit 227 "g") ./ 4,
      Ingredient "Low fat Milk" 2.4 12.2 8.5 (Unit 8 "oz") ./ 4,
      Ingredient "Almond butter" 9.4 3.4 2.4 (Unit 17 "g"),
      Ingredient "Honey" 0 17 0.1 (Unit 18 "g"),
      Ingredient "Chia seed" 9 10 6 (Unit 26 "g") ./ 2
  ]

intake2 = [chickenSalad, m5, bananaMedium, wheyplus]
intake =[chickenSalad, m5, bananaMedium, wheyplus, greekYogurt, fishOil]

refeed = [chickenSalad, wheyplus, oats, bananaMedium, appleMedium, fishOil, chickenAndRice]
