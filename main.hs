module Main where

data Unit = Gram Float | Ounce Float | FluidOunce Float deriving (Show, Eq)
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

class Macros a where
  fats, carbs, protein :: a -> Gram

instance Macros MacroNutrients where
  fats (MacroNutrients (Fat g) _ _) = g
  carbs (MacroNutrients _ (Carbohydrate g) _) = g
  protein (MacroNutrients _ _ (Protein g)) = g

instance Ops MacroNutrients where
  (.*) m n =
    MacroNutrients (Fat (fats m * n))
    (Carbohydrate (carbs m * n))
    (Protein (protein m * n))

instance Ops Unit where
   (.*) (Gram m) n = Gram (m*n)
   (.*) (Ounce m) n = Ounce (m*n)
   (.*) (FluidOunce m) n = FluidOunce (m*n)

instance Macros Ingredient where
  fats (Ingredient _ m _) = fats m
  carbs (Ingredient _ m _) = carbs m
  protein (Ingredient _ m _) = protein m

instance Ops Ingredient where
  (.*) (Ingredient name macros amount) n =
    Ingredient name (macros .* n) (amount .* n)
