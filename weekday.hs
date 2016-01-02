import Macros

intake =
  [
     Ingredient "Whey Protein Powder" 1 3 24 (Unit 1 "Scoop"),
     Meal "Lunch" 1
     [
       Ingredient "Medium Grain White Rice (Cooked)" 0.22 28.6 2.4 (Unit 100 "g"),
       Meal "Chicken stir-fry" 6
       [
         Ingredient "Oil" 14 0 0 (Unit 1 "Tbsp"),
         (Ingredient "Chicken" 1.5 0 26 (Unit 4 "oz")) .* 6.5,
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
     ],
     Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop"),
     Ingredient "Rice Milk" 2.5 23 1 (Unit 1 "Cup"),
     Meal "Chicken Enchilada Rice Casserolse" 6
     [
       Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup"),
       Ingredient "Chicken Breast (Raw)" 11.2 0 209.5 (Unit 2 "lb"),
       (Ingredient "Enchilada Sauce" 0 4 0 (Unit 0.25 "Cup")) .* 13,
       (Ingredient "Refried Beans" 0 16 6 (Unit 0.5 "Cup")) .* 3.5,
       Ingredient "Corn kernels" 0 18 0 (Unit 90 "g"),
       (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 8,
       Ingredient "Black Beans (drained)" 0.5 22 7 (Unit 130 "g"),
       Ingredient "Onion" 0 11.1 1 (Unit 110 "g")
     ]
    --  Ingredient "PB2" 1 6 5 (Unit 12 "g")
  ]
