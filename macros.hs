{-# LANGUAGE FlexibleInstances #-}

module Macros where

data Unit = Gram Float |
            Ounce Float |
            Pound Float |
            FluidOunce Float |
            Cup Float |
            TableSpoon Float|
            TeaSpoon Float deriving (Show, Eq)
type Gram = Float

data Fat = Fat Gram deriving (Show, Eq)
data Carbohydrate = Carbohydrate Gram deriving (Show, Eq)
data Protein = Protein Gram deriving (Show, Eq)

data MacroNutrients = MacroNutrients Fat Carbohydrate Protein deriving (Show, Eq)

data Ingredient = Ingredient String MacroNutrients Unit deriving (Show, Eq)
data Recipe = Recipe String [Ingredient] Int deriving (Show, Eq)


class Ops a where
  (.*), (./) :: a -> Float -> a
  (./) m 0 = error "Cannot divide by zero"
  (./) m n = m .* (1/n)

instance Ops MacroNutrients where
  (.*) m n =
    MacroNutrients (Fat (fats' m * n))
    (Carbohydrate (carbs' m * n))
    (Protein (protein' m * n))

instance Ops Unit where
   (.*) (Gram m) n = Gram (m*n)
   (.*) (Ounce m) n = Ounce (m*n)
   (.*) (Pound m) n = Pound (m*n)
   (.*) (FluidOunce m) n = FluidOunce (m*n)
   (.*) (Cup m) n = Cup (m*n)
   (.*) (TableSpoon m) n = TableSpoon (m*n)
   (.*) (TeaSpoon m) n = TeaSpoon (m*n)

instance Ops Ingredient where
  (.*) (Ingredient name macros amount) n =
    Ingredient name (macros .* n) (amount .* n)

class Macros a where
  fats', carbs', protein' :: a -> Gram

instance Macros MacroNutrients where
  fats' (MacroNutrients (Fat g) _ _) = g
  carbs' (MacroNutrients _ (Carbohydrate g) _) = g
  protein' (MacroNutrients _ _ (Protein g)) = g

instance Macros Ingredient where
  fats' (Ingredient _ m _) = fats' m
  carbs' (Ingredient _ m _) = carbs' m
  protein' (Ingredient _ m _) = protein' m

instance Macros [Ingredient] where
  fats' = sum . map (fats')
  carbs' = sum . map (carbs')
  protein' = sum . map (protein')

instance Macros Recipe where
  fats' (Recipe _ is servings) = (fats' is) / fromIntegral servings
  carbs' (Recipe _ is servings) = (carbs' is) / fromIntegral servings
  protein' (Recipe _ is servings) = (protein' is) / fromIntegral servings

instance Macros [Recipe] where
  fats' = sum . map (fats')
  carbs' = sum . map (carbs')
  protein' = sum . map (protein')


fats :: (Macros a, Integral b) => a -> b
fats = ceiling . fats'

carbs :: (Macros a, Integral b) => a -> b
carbs = ceiling . carbs'

protein :: (Macros a, Integral b) => a -> b
protein = ceiling . protein'

tf :: (Real a, Fractional b) => a -> b
tf = realToFrac

calories :: (Macros a, Fractional b) => a -> b
calories m = sum [tf (fats m) * 9, tf (carbs m) * 4, tf (protein m) * 4]

macro :: Float -> Float -> Float -> MacroNutrients
macro f c p = MacroNutrients (Fat f) (Carbohydrate c) (Protein p)

ingredient :: String -> Float -> Float -> Float -> Unit -> Ingredient
ingredient n f c p u = Ingredient n (macro f c p) u
