module Recipes where

import Macros

cheesyChickenBroccoli =
  Meal "Cheesy Chicken Broccoli and Rice Casserole" 2
  [
    (Ingredient "Olive Oil" 14 0 0 (Unit 14 "g")),
    (Ingredient "Cream of Chicken Soup (with herbs), 10oz"
      8 9 2 (Unit 0.5 "cup")) .* 2.5,
    -- (Ingredient "Cream of Chicken Soup, Healthy Request 10oz"
    --   2 9 1 (Unit 0.5 "cup")) .* 2.5,
    Ingredient "Long-grained White Rice, raw" 1.2 148 13 (Unit 185 "g"),
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")) .* 2.25,
    (Ingredient "Garlic, raw" 0.1 4 0.8 (Unit 12 "g")),
    (Ingredient "Shallots, raw" 0.1 8.4 1.3 (Unit 50 "g")),
    (Ingredient "Brown Mushrooms (Italian or Crimini), raw"
      0.1 3.5 2.1 (Unit 85 "g")) .* 3,
    (Ingredient "Broccoli, raw" 0.4 6.6 2.8 (Unit 100 "g")),
    (Ingredient "Chicken Breast (Raw)" 11.2 0 209.5 (Unit 2 "lb")) ./ 4,
    (Ingredient "Carrots, raw" 0.2 9.6 0.9 (Unit 100 "g"))
  ]

bakedBananaOatmeal =
  Meal "Baked Banana Walnut Rasin Oatmeal" 6
  [
    (Ingredient "Almon Milk, unsweetened" 2.4 8 1 (Unit 1 "cup")),
    (Ingredient "Egg" 5 0 6 (Unit 1 "large")),
    -- (Ingredient "Walnut" 19 4 4.3 (Unit 30 "g")),
    (Ingredient "PB2 - Traditional" 1.5 5 5 (Unit 12 "g")) .* 3,
    (Ingredient "Cocoa powder (Hershey's)" 0.5 3 1 (Unit 5 "g")),
    (Ingredient "Banana (medium - 6.5oz)" 0.4 27 1.3 (Unit 1 "medium")) .* 3,
    (Ingredient "Quaker Oats - Old Fashioned" 3 27 5 (Unit 40 "g")) .* 3.5,
    (Ingredient "Rasins" 0 31 1 (Unit 40 "g")) .* 1.5,
    (Ingredient "Baking powder" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Baking soda" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp"))
  ]

chickenEnchiladaCasserole =
  Meal "Chicken Enchilada Rice Casserole" 6
  [
    (Ingredient "White Rice (Raw)" 2.4 295.8 26.4 (Unit 2 "Cup")),
    (Ingredient "Chicken Breast (Raw)" 11.2 0 209.5 (Unit 2 "lb")) ./ 2,
    (Ingredient "Enchilada Sauce" 0 4 0 (Unit 0.25 "Cup")) .* 13,
    (Ingredient "Refried Beans" 0 16 6 (Unit 0.5 "Cup")) .* 3.5,
    (Ingredient "Corn kernels" 0 18 0 (Unit 90 "g")),
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 4,
    (Ingredient "Black Beans (drained)" 0.5 22 7 (Unit 130 "g")) .* 3.5,
    (Ingredient "Onion" 0 11.1 1 (Unit 110 "g"))
  ]

mexicanBeefAndRiceCasserole =
  Meal "Mexican beef and rice casserole" 6
  [
    (Ingredient "Ground beef, (93:7)" 8 0 24 (Unit 4 "oz")) .* 4,
    (Ingredient "Cheese" 9 1 7 (Unit 28 "g")) .* 4,
    (Ingredient "White Rice, Raw" 2.4 295.8 26.4 (Unit 2 "Cup")) ./ 2,
    (Ingredient "Spinach, raw" 1.3 11.9 9.4 (Unit 11.5 "oz")),
    (Ingredient "Corn kernels" 0 21 2 (Unit 90 "g")) .* 2,
    (Ingredient "Salsa" 0 2 0 (Unit 30 "ml")) .* 4,
    (Ingredient "Onion" 0 11.1 1 (Unit 110 "g")),
    (Ingredient "Fire roasted tomato" 0 6 1 (Unit 123 "g")) .* 3.5,
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")) .* 2
  ]

appleCoffeeCake =
  Meal "Apple Coffee Cake" 8
  [
    (Ingredient "Apple Sauce (Unsweetened)" 0 18 0 (Unit 122 "g")),
    (Ingredient "Brown Sugar, lightly packed (3/4 cup)" 0 150 0 (Unit 150 "g")),
    (Ingredient "Egg" 5 0 6 (Unit 1 "large")),
    (Ingredient "All Purpose White flour" 1.2 95.4 12.9 (Unit 4.4 "oz")),
    (Ingredient "Baking soda" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Cinnamon" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Non-fat Greek Yogurt (fage)" 0 9 23 (Unit 227 "g")) ./ 2,
    (Ingredient "Vanilla extract" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Diced Apple" 0.3 20.7 0.4 (Unit 150 "g")),
    Meal "Topping" 1
    [
      (Ingredient "Brown Sugar" 0 12.7 0 (Unit 13 "g")) .* 3,
      (Ingredient "White flour" 0.3 21.6 2.9 (Unit 1 "oz")),
      (Ingredient "Butter" 14 0 0 (Unit 1 "tbsp")) .* 2
    ]
  ]

sweetPotatoBurrito =
  Meal "Sweet Potato Breakfast Burrito" 8
  [
    (Ingredient "Olive oil" 14 0 0 (Unit 14 "g")),
    (Ingredient "Onion" 0 11.1 1 (Unit 110 "g")) .* 2,
    (Ingredient "Garlic" 0 1 0 (Unit 1 "clove(s)")) .* 3,
    (Ingredient "Sweet Potato, cubed" 0.1 57 4.5 (Unit 10 "oz")),
    (Ingredient "Zucchini, diced" 0.4 4.3 1.5 (Unit 4.4 "oz")) .* 1.5,
    (Ingredient "Chili Powder" 0 0 0 (Unit 0.5 "tsp")),
    (Ingredient "Cumin" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Ground pepper" 0 0 0 (Unit 0.25 "tsp")),
    (Ingredient "Tortillas" 4.5 30 4 (Unit 1 "serving")) .* 8,
    Meal "Scrambled Eggs" 1
    [
      (Ingredient "Egg" 5 0 6 (Unit 1 "large")) .* 8,
      (Ingredient "Spinach, finely chopped" 0.2 2.2 1.7 (Unit 2.2 "oz")),
      (Ingredient "Salt" 0 0 0 (Unit 0.25 "tsp")),
      (Ingredient "Ground pepper" 0 0 0 (Unit 0.25 "tsp")),
      (Ingredient "Cooking spray" 0 0 0 (Unit 1 "spray"))
    ]
  ]

pastaSauceWith food =
  Meal "Butternut Squash Pasta Sauce" servings
  [
    (Ingredient "Butter" 12.2 0 0 (Unit 15 "g")) .* 2,
    (Ingredient "Onion" 0.2 15 1.8 (Unit 160 "g")),
    (Ingredient "Garlic" 0.05 1 0.2 (Unit 3 "clove")),
    (Ingredient "Butternut Squash (cubed)" 0.1 16.4 1.4 (Unit 140 "g")) .* 3,
    (Ingredient "Swanson's Chicken Broth" 0.5 1 1 (Unit 1 "cup")),
    (Ingredient "Thyme" 0 0 0 (Unit 1 "tbsp")) .* 1.5,
    (Ingredient "Sage" 0.3 1.2 0.2 (Unit 2 "g")) .* 1.5,
    (Ingredient "Milk 1%" 2.5 12.3 8.1 (Unit 1 "cup")),
    food .* (fi servings)
  ]
  where
    servings = 6

lunchBurrito =
  Meal "Beef Avocado Burrito" servings
  [
    (Ingredient "Soft Tortilla" 4 37 5 (Unit 1 "serving")) .* (fi servings),
    (Ingredient "Ground beef, (93:7)" 8 0 24 (Unit 4 "oz")) .* 4,
    (Ingredient "Spinach, raw" 1.3 11.9 9.4 (Unit 11.5 "oz")),
    (Ingredient "Fire roasted tomato" 0 6 1 (Unit 123 "g")) .* 3.5,
    (Ingredient "Avocado" 11.7 6.8 1.6 (Unit 80 "g")) .* (fi servings)
  ]
  where
    servings = 6

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

overNightOats = Meal "Overnight oats" 1
  [
      ((Ingredient "Oats, old fashioned" 3 27 5 (Unit 40 "g")) .* 2) ./ 3,
      Ingredient "Greek yogurt" 0 9 23 (Unit 227 "g") ./ 4,
      Ingredient "Low fat Milk" 2.4 12.2 8.5 (Unit 8 "oz") ./ 4,
      Ingredient "Almond butter" 9.4 3.4 2.4 (Unit 17 "g"),
      Ingredient "Honey" 0 25 0.1 (Unit 25 "g"),
      Ingredient "Chia seed" 9 10 6 (Unit 26 "g") ./ 2
  ]

tunaCasserole =
  Meal "Tuna casserole" 4
  [
    Ingredient "Tuna" 0.5 0 13 (Unit 2 "oz") .* 4.5, -- 12oz can
    Ingredient "Egg noodle" 3 40 8 (Unit 56 "g") .* 6, -- 2 cups
    Ingredient "Peas" 0 12 5 (Unit 90 "g") .* 2.5,
    Ingredient "Cream of mushrooms" 6 8 1 (Unit 1.5 "cup") .* 2.5,
    Ingredient "Whole milk" 2.4 12 8 (Unit 244 "g"),
    Ingredient "Cheddar cheese" 10 1 8 (Unit 1 "oz") .* 3
  ]

turkeyBurito =
  Meal "Beef Avocado Burrito" servings
  [
    (Ingredient "Soft Tortilla" 4 37 5 (Unit 1 "serving")) .* (fi servings),
    (Ingredient "Ground turkey, (93:7)" 8 0 22 (Unit 4 "oz")) .* 4,
    (Ingredient "Egg" 5 0 6 (Unit 1 "large")) .* (fi (servings * 2)),
    (Ingredient "Sweet potato" 0.1 27 2.1 (Unit 133 "grams")) .* 4,
    Ingredient "Oil" 15 0 0 (Unit 15 "g"),
    Ingredient "Onion" 0.1 16.2 1.5 (Unit 5.6 "oz"),
    (Ingredient "Avocado" 3.1 1.7 0.4 (Unit 20 "g")) .* (fi servings)
  ]
  where
    servings = 6
