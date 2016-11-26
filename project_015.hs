-- the math way for this problem is by calculation the binomial
-- find more about it here https://en.wikipedia.org/wiki/Lattice_path
import Numeric

binomial n k = factorial(n) / (factorial(k) * factorial((n-k)))
  where factorial x = if x > 1 then factorial(x-1) * x else 1

-- Haskell put solution in scientific notation
project_15 = putStrLn $ Numeric.showFFloat Nothing solution ""
  where solution = binomial 40 20
