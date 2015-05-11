import Macros

-- All the ingredients
cornstarch = ingredient "Corn Starch" 0 7 0 (TableSpoon 1)
oil = ingredient "Oil" 14 0 0 (TableSpoon 1)
chicken = ingredient "Chicken" 8.4 0 157.1 (Pound 1.5)
onion = ingredient "Onion" 0.1 17.2 1.6 (Gram 170)
pepper = ingredient "Red Bell Pepper" 0.6 12.6 2 (Gram 200)
garlic = ingredient "Garlic" 0 5 1 (Gram 15)
yogurt = ingredient "Fage Greek Yogurt" 0 9 23 (Gram 227)
eggwhites = ingredient "Egg whites" 0 0 20 (Gram 160)
ricemilk = ingredient "Rice Milk" 2.5 23 1 (Cup 1)
proteinpowder = ingredient "Whey protein" 1 3 24 (Gram 30)
potato = ingredient "Potato" 0.1 27 2.3 (Gram 150)
rice = ingredient "Medium Grain White Rice, cooked" 0.2 28.6 2.4 (Gram 100)
sugar = ingredient "White Sugar" 0 16 0 (Gram 16)

-- Recipies
lunch = Recipe "Chicken & Basil stir-fry"
               [chicken, cornstarch, oil, onion, pepper, garlic, (rice .* 6)]
               6
preworkout = Recipe "Preworkout Shake" [proteinpowder, ricemilk] 1
