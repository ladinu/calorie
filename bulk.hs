import Macros

wheyplus = Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")

bananaMedium = Ingredient "Banana (medium - 6.5oz w/ skin)"
  0.4 27 1.3 (Unit 1 "medium")

appleMedium = Ingredient "Apple (medium - 70z w/ refuse 3\" dia)"
  0.3 25 0.5 (Unit 1 "medium")

pb2 = Ingredient "PB2 - Traditional" 1.5 5 5 (Unit 12 "g")

m0 =
  Meal "Cheesy Chicken Broccoli and Rice Casserole" 2
  [
    (Ingredient "Olive Oil" 14 0 0 (Unit 14 "g")) ./ 2,
    (Ingredient "Cream of Chicken Soup (with herbs), 10oz"
      6 9 2 (Unit 0.5 "cup")) .* 2.5,
    -- (Ingredient "Cream of Chicken Soup, Healthy Request 10oz"
    --   2 9 1 (Unit 0.5 "cup")) .* 2.5,
    Ingredient "Long-grained White Rice, raw" 1.2 148 13 (Unit 185 "g"),
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")) .* 2.25,
    (Ingredient "Garlic, raw" 0.1 4 0.8 (Unit 12 "g")),
    (Ingredient "Shallots, raw" 0.1 8.4 1.3 (Unit 50 "g")),
    (Ingredient "Brown Mushrooms (Italian or Crimini), raw"
      0.1 3.5 2.1 (Unit 85 "g")) .* 3,
    (Ingredient "Broccoli, raw" 0.4 6.6 2.8 (Unit 100 "g")),
    (Ingredient "Carrots, raw" 0.2 9.6 0.9 (Unit 100 "g"))
  ]

m1 =
  Meal "Baked Banana Walnut Rasin Oatmeal" 6
  [
    Ingredient "Low-Fat Milk (1% fat)" 2.4 12.2 8.5 (Unit 1 "cup"),
    (Ingredient "Egg" 5 0 6 (Unit 1 "large")) .* 1,
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
  Meal "Chicken Enchilada Rice Casserolse" 6
  [
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup")),
    Ingredient "Chicken Breast (Raw)" 11.2 0 209.5 (Unit 2 "lb"),
    (Ingredient "Enchilada Sauce" 0 4 0 (Unit 0.25 "Cup")) .* 13,
    (Ingredient "Refried Beans" 0 16 6 (Unit 0.5 "Cup")) .* 3.5,
    Ingredient "Corn kernels" 0 18 0 (Unit 90 "g"),
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 8,
    Ingredient "Black Beans (drained)" 0.5 22 7 (Unit 130 "g"),
    Ingredient "Onion" 0 11.1 1 (Unit 110 "g")
  ]

m3 =
  Meal "Mexican beef and rice casserole" 6
  [
    (Ingredient "Ground beef, (93:7)" 8 0 24 (Unit 4 "oz")) .* 4,
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 8,

    (Ingredient "White Rice, Raw" 2.4 295.8 26.4 (Unit 2 "Cup")) ./ 2,
    Ingredient "Spinach, raw" 1.3 11.9 9.4 (Unit 11.5 "oz"),
    (Ingredient "Corn kernels" 0 21 2 (Unit 90 "g")) .* 2,
    (Ingredient "Salsa" 0 2 0 (Unit 30 "ml")) .* 4,
    Ingredient "Onion" 0 11.1 1 (Unit 110 "g"),
    (Ingredient "Fire roasted tomato" 0 6 1 (Unit 123 "g")) .* 3.5,
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")) .* 2
  ]
intake = [wheyplus, m0, m1, m2, bananaMedium, appleMedium]
