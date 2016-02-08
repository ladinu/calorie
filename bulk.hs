import Macros
import Recipes


target = tdee + (0.10 * tdee)

intake = [
  Meal "Breakfast" 1 [sweetPotatoBurrito],
  Meal "Lunch"     1 [lunchBurrito],
  Meal "Pre-workout Shake" 1
  [
    (Ingredient "Rice Milk" 2.5 23 1 (Unit 1 "Cup")),
    (Ingredient "Whey+ Protein Powder" 0 1 22 (Unit 1 "Scoop")),
    (Ingredient "Banana (medium - 6.5oz)" 0.4 27 1.3 (Unit 1 "medium"))
  ],
  Meal "Post-workout (dinner)" 1
  [
    chickenEnchiladaCasserole,
    (Ingredient "Apple (medium)" 0.3 25 0.5 (Unit 180 "g"))
  ],
  Meal "Snack before sleep" 1
  [
    (Ingredient "Yogurt (fage)" 0 9 23 (Unit 227 "g")) ./ 2,
    (Ingredient "Mixed Berries" 0 17 1 (Unit 126 "g")) ./ 2,
    -- appleCoffeeCake
    bakedBananaOatmeal
  ]
  ]
sundayIntake = [
  cheesyChickenBroccoli,
  appleCoffeeCake .* 2,
  (Ingredient "Yogurt (fage)" 0 9 23 (Unit 227 "g")),
  (Ingredient "Apple (medium)" 0.3 25 0.5 (Unit 180 "g")),
  (Ingredient "PB2 - Traditional" 1.5 5 5 (Unit 12 "g")) .* 2
 ]
-- intake = [m5,    m3, banana, shake, m2, m1, apple]
-- intake1 = [pasta,     banana, shake, m2, m1, apple]
