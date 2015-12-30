{-# LANGUAGE FlexibleInstances #-}

module Macros where

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

class Display a where
  display :: a -> String

class Ops a where
  (.*), (./) :: a -> Float -> a
  (./) m 0 = error "Cannot divide by zero"
  (./) m n = m .* (1/n)


instance Macros Food where
  fats    (Ingredient _ f _ _ _) = f
  fats    (Meal _ servings fs) = sum (map fats fs) / fromIntegral servings
  carbs   (Ingredient _ _ c _ _) = c
  carbs   (Meal _ servings fs) = sum (map carbs fs) / fromIntegral servings
  protein (Ingredient _ _ _ p _) = p
  protein (Meal _ servings fs ) = sum (map protein fs) / fromIntegral servings


instance Ops Unit where
   (.*) (Unit m name) n = Unit (m*n) name

instance Ops Food where
  (.*) (Ingredient name f c p amount) n =
    Ingredient name (f * n) (c * n) (p * n) (amount .* n)

instance Display Unit where
  display (Unit amount name) = show amount ++ " " ++ name

instance Display Food where
  display (Ingredient name _ _ _ u) = name ++ " " ++ display u
  display (Meal name servings fs) =
    "------- " ++ name ++ " [" ++ show servings ++ "] -------\n"
    ++ concat (map (++ "\n") (map display fs))


tf :: (Real a, Fractional b) => a -> b
tf = realToFrac

calories :: (Macros a, Fractional b) => a -> b
calories m = sum [tf (fats m) * 9, tf (carbs m) * 4, tf (protein m) * 4]

macros f = (ceiling (fats f), ceiling (carbs f), ceiling (protein f))

toKG :: Double -> Double
toKG = (*) 0.453592

bmr :: Double -> Double -> Double
bmr bw bf = 370.0 + (21.6 * (toKG(bw) * (1.0-bf)))

prnt a = putStr $ display a ++ "\n"
