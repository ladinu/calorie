{-# LANGUAGE FlexibleInstances #-}

module Macros where

import Data.List

type NumServings  = Int
type Gram         = Float

type Fat          = Gram
type Carbohydrate = Gram
type Protein      = Gram

data Unit         = Unit Float String deriving (Show, Eq)
data Food         =
  Ingredient String Fat Carbohydrate Protein Unit |
  Meal String NumServings [Food]  deriving (Show, Eq)


class Macros a where
  fats, carbs, protein :: a -> Gram

  fatCalories, carbCalories, proteinCalories :: a -> Float
  fatCalories f = fats f * 9
  carbCalories f = carbs f * 4
  proteinCalories f = protein f * 4

  calories :: a -> Float
  calories f = fatCalories f + carbCalories f + proteinCalories f

  macros :: Integral b => a -> (b, b, b)
  macros f = (ceiling (fats f), ceiling (carbs f), ceiling (protein f))

  i :: a -> String
  i f = show (calories f) ++ " " ++ show (macros f)


class Display a where
  display :: a -> String

class ToJoules a where
  toJoules :: a -> String

class Ops a where
  (.*), (./) :: a -> Float -> a
  (./) m 0 = error "Cannot divide by zero"
  (./) m n = m .* (1/n)

instance ToJoules Food where
  toJoules (Ingredient n f c p (Unit a u)) = "Ingredient \"" ++ n ++ "\"" ++ " Macros " ++ show f ++ " " ++ show c ++ " " ++ show p ++ " Amount " ++ show a ++ " \"" ++ u ++ "\""
  toJoules (Meal n s fs) = "Meal " ++ "\"" ++ n ++ "\" " ++ show s ++ " " ++ (toJoules fs)

instance ToJoules [Food] where
  toJoules fs = intercalate ", " (map toJoules fs)

instance Macros Food where
  fats    (Ingredient _ f _ _ _) = f
  fats    (Meal _ servings fs) = sum (map fats fs) / fromIntegral servings
  carbs   (Ingredient _ _ c _ _) = c
  carbs   (Meal _ servings fs) = sum (map carbs fs) / fromIntegral servings
  protein (Ingredient _ _ _ p _) = p
  protein (Meal _ servings fs ) = sum (map protein fs) / fromIntegral servings

instance Macros [Food] where
  fats = sum . map fats
  carbs = sum . map carbs
  protein = sum . map protein


instance Ops Unit where
   (.*) (Unit m name) n = Unit (m*n) name

instance Ops Food where
  (.*) (Ingredient name f c p amount) n =
    Ingredient name (f * n) (c * n) (p * n) (amount .* n)
  (.*) (Meal name servings foods) n = Meal name servings (map (.* n) foods)

instance Display Unit where
  display (Unit amount name) = show amount ++ " " ++ name

instance Display Food where
  display (Ingredient name f c p u) =
    name ++ " " ++ display u ++ " " ++ show (macros (Ingredient name f c p u))
  display (Meal name servings fs) =
    "------- "
     ++ name ++ " [ 1/" ++ show servings ++
     " | " ++ show (ceiling (calories (Meal name servings fs))) ++
     " | " ++ show (macros (Meal name servings fs))++
     " ] -------\n"
    ++ concat (map (++ "\n") (map display fs))


ingredients :: [Food] -> String
ingredients [] = ""
ingredients ((Ingredient name _ _ _ (Unit amount unit)):fs) =
  name ++ " " ++ show amount ++ " " ++ unit ++ "\n" ++ ingredients fs
ingredients ((Meal _ _ foods):fs) = ingredients foods ++ ingredients fs

prnt a = putStr $ display a ++ "\n"
fi a = fromIntegral a

toKG :: Double -> Double
toKG = (*) 0.453592

bmr :: Double
bmr = 370.0 + (21.6 * (toKG(bw) * (1.0-bf)))

tdee :: Double
tdee = bmr * activityLevelMultipliers !! 2

activityLevelMultipliers = [
    1.1, -- 1 hour exercise per week
    1.2, -- 1-3 hours exercise per week
    1.35, -- 4-6 hours exercise per week
    1.45 -- 6+ hours exercise per week
  ]
bw :: Double
bw = 125

bf :: Double
bf = 0.20

target :: Double
target = tdee - (0.25 * tdee)

profile a = "Calories: " ++ show (calories a) ++ "\n"
  ++ "fats: " ++ show (fats a) ++ "\n"
  ++ "carbs: " ++ show (carbs a) ++ "\n"
  ++ "protein: " ++ show (protein a) ++ "\n"
