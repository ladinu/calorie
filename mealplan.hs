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
paste    = ingredient "Tomato Paste" 0 6 2 (Gram 33)
tacomix  = ingredient "Taco Mix" 0 3 0 (TeaSpoon 2) .* 6
lettuce  = ingredient "Iceberg Lettuce" 0.1 1.5 0.5  (Gram 50)

-- Recipies
chicken' = chicken .* 6.5
rice'    = rice .* 6
lunch    =
  Recipe "Chicken & Basil stir-fry and Rice"
  [chicken', oil, garlic, pepper, onion', starch, broccoli .* 2.5, rice']
  6

shake =
  Recipe "Post Workout shake"
  [proteinpowder .* 2, ricemilk]
  1

yogurt' = yogurt ./ 2
dessert =
  Recipe "Dessert"
  [yogurt', sugar]
  1

chard = ingredient "Swiss Chard (1lb)" 0.9 17 8.2 (Pound 1)
shrimp' = ingredient "Shrimp" 11.8 6.2 138.2 (Pound 1.5)
shrimp =
  Recipe "Shirmp and Chard"
  [chard, onion, shrimp', oil .* 2]
  6

rice''    = ingredient "White Rice" 2.4 295.8 26.4 (Cup 2)
chicken'' = ingredient "Chicken Breast" 11.2 0 209.5 (Ounce 32)
sauce = (ingredient "Enchilada Sauce" 0 4 0 (Cup 0.25)) .* 13
refriedBeans = (ingredient "Refried beans" 0 16 6 (Cup 0.5)) .* 3.5
corn = ingredient "Corn kernels" 0 18 0 (Gram 125)
cheese = (ingredient "Cheese" 9 1 7 (Gram 28)) .* 8

casserole =
 Recipe "Chicken Enchilada Rice Casserole"
 [rice'', chicken'', sauce, refriedBeans, corn, cheese, beans, onion', lettuce] 6

snack0 =
  Recipe "Almonds"
  [ingredient "Almonds" 10.1 3.9 4.3 (Gram 20)] 1

snack1 =
  Recipe "Apple 1 large"
  [ingredient "Apple" 0.4 31 0.6 (Gram 223)] 1

-- Sunday meals
chickenSalad =
  Recipe "Chicken Salad"
  [ingredient "Chicken Breast" 5.6 0 104.7 (Pound 1), onion',
   ingredient "Celery stalk (1)" 0 0 0 (Gram 0),
   (ingredient "Mayonnaise" 10 0 0 (TableSpoon 1)) .* 3,
   (ingredient "Fage Yogurt" 0 7 18 (Ounce 6)) ./ 3,
   ingredient "Tarragon Leaves" 0 0 0 (Gram 0),
   ingredient "Walnut Chooped" 19 4 4.45 (Cup (1/4))] 4

chickenAndRice =
  Recipe "Chicken and Rice"
  [ ingredient "Chicken Breast (cubed)" 1.4 0 26.1 (Ounce 1),
    (ingredient "Cream of Chicken soup" 6 9 2 (Cup (1/2))) .* 2.5,
    ingredient "White rice" 1.2 150 13.2 (Cup 1),
    ingredient "Onion (chopped)" 0 16.2 1.5 (Ounce 5.6),
    (ingredient "Sharp Cheddar" 9 0 7 (Cup (1/4))) .* 4,
    oil] 2

--
intake = [lunch, shake, casserole, shrimp]

macroBreakdown = [fats intake, carbs intake, protein intake]
macroBreakdownExpected bw =  [0.2*bw, bw, 1.2*bw]
calorieIntake = sum $ map calories intake
calorieIntakeExpected bw = sum [9*bw*0.2, 4*bw, 4*bw*1.2]

toKG :: Double -> Double
toKG = (*) 0.453592

bmr :: Double -> Double -> Double
bmr bw bf = 370.0 + (21.6 * (toKG(bw) * (1.0-bf)))

prnt a = putStr $ show' a
