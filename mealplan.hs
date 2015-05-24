import Macros

-- All the ingredients
yogurt        = ingredient "Fage Greek Yogurt" 0 9 23 (Gram 227)
eggwhites     = ingredient "Egg whites" 0 0 20 (Gram 160)
ricemilk      = ingredient "Rice Milk" 2.5 23 1 (Cup 1)
proteinpowder = ingredient "Whey protein" 1 3 24 (Gram 30)
sugar         = ingredient "White Sugar" 0 16 0 (Gram 16)
rice          = ingredient "Medium Grain White Rice, cooked" 0.2 28.6 2.4 (Gram 100)

potato   = ingredient "Potato" 0.1 27 2.3 (Gram 150)
mushroom = ingredient "Mushroom" 0 3 1 (Gram 85)
beans    = ingredient "Black Beans (drained)" 0.5 22 7 (Gram 130)
tomato   = ingredient "Diced Tomato - Chili Ready" 0 7 1 (Gram 121)
turkey   = ingredient "Ground Turkey - 93% lean" 8 0 22 (Gram 112)
chicken  = ingredient "Chicken" 1.5 0 26 (Ounce 4)
oil      = ingredient "Oil" 14 0 0 (TableSpoon 1)
garlic   = ingredient "Garlic" 0 5 1 (Gram 15)
pepper   = ingredient "Red Bell Pepper" 0.6 12.6 2 (Gram 200)
onion    = ingredient "Onion" 0.1 17.2 1.6 (Gram 170)
ginger   = ingredient "Ginger" 0.1 2.7 0.3 (Gram 15)
starch   = ingredient "Corn Starch" 0 10 0 (Gram 10)
onion'   = ingredient "Onion" 0 11.1 1 (Gram 110)
broccoli = ingredient "Broccoli" 0.7 13.3 5.6 (Gram 200)
broth    = ingredient "Chicken broth" 0 1 4 (Cup 1)
paste    = ingredient "Tomato Paste" 0 7 1 (Gram 35)

-- Recipies
chicken' = chicken .* 6.5
rice'    = rice .* 6
lunch    =
  Recipe "Chicken & Basil stir-fry and Rice"
  [chicken', oil, garlic, pepper, onion', ginger, starch, broccoli, rice']
  6

shake1 =
  Recipe "Pre-Workout Shake"
  [proteinpowder, ricemilk]
  1

potato'   = potato .* 6
mushroom' = mushroom .* 3
garlic'   = garlic
oil'      = oil ./ 6
beans'    = beans .* 3.5
tomato'   = tomato .* 3.5
turkey'   = turkey .* 5
chili     =
  Recipe "Chili and Potato"
  [potato', mushroom', onion', garlic', oil', broth, beans', paste, tomato', turkey']
  6

shake2 =
  Recipe "Post Workout shake"
  [proteinpowder .* 2]
  1

yogurt' = yogurt ./ 2
dessert =
  Recipe "Dessert"
  [yogurt', sugar]
  1

intake = [lunch, shake1, chili, shake2, dessert]
macroBreakdown = [fats intake, carbs intake, protein intake]
macroBreakdownExpected bw =  [0.2*bw, bw, 1.2*bw]
calorieIntake = sum $ map calories intake
calorieIntakeExpected bw = sum [9*bw*0.2, 4*bw, 4*bw*1.2]
