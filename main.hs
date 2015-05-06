data Unit = Gram Float | Ounce Float | FluidOunce Float deriving (Show, Eq)
type Gram = Float

data Fat = Fat Gram deriving (Show, Eq)
data Carbohydrate = Carbohydrate Gram deriving (Show, Eq)
data Protein = Protein Gram deriving (Show, Eq)

data MacroNutrients = MacroNutrients Fat Carbohydrate Protein deriving (Show, Eq)


data Ingredient = Ingredient String MacroNutrients Unit deriving (Show, Eq)
-- data Recipe = Recipe String 
