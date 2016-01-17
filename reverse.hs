import Macros

bananaMedium = Ingredient "Banana (medium - 6.5oz w/ skin)" 0.4 27 1.3 (Unit 1 "medium")
appleMedium = Ingredient "Apple (medium - 70z w/ refuse 3\" dia)" 0.3 25 0.5 (Unit 1 "medium")
wheyplus = Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")
pb2 = Ingredient "PB2 - Traditional" 1.5 5 5 (Unit 12 "g")
ricemilk = Ingredient "Rice Milk" 2.5 23 1 (Unit 1 "Cup")

m0 = Meal "Lunch" 1
     [
       Ingredient "White Rice (Cooked)" 0.22 28.6 2.4 (Unit 100 "g"),
       Meal "Chicken stir-fry" 6
       [
         Ingredient "Oil" 14 0 0 (Unit 1 "Tbsp"),
         (Ingredient "Chicken" 1.5 0 26 (Unit 4 "oz")) .* 4,
         Ingredient "Bell Pepper" 0.6 12.6 2 (Unit 200 "g"),
         Ingredient "Onion" 0 11.1 1 (Unit 110 "g")
       ],
       Meal "Shrimp stir-fry" 6
       [
         (Ingredient "Oil" 14 0 0 (Unit 1 "Tbsp")) .* 2,
         Ingredient "Onion" 0.1 17.2 1.6 (Unit 170 "g"),
         Ingredient "Brussel Sprouts" 0.7 20.3 7.7 (Unit 8 "oz"),
         Ingredient "Shrimp" 11.8 6.2 138.7 (Unit 1.5 "lb")
       ]
     ]

m1 =
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

m2 =
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


intake =[ bananaMedium .* 1, wheyplus, ricemilk, m1, m2, m3, appleMedium, pb2]
