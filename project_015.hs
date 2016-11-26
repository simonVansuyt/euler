import Numeric

binomial n k = factorial(n) / (factorial(k) * factorial((n-k)))
  where factorial x = if x > 1 then factorial(x-1) * x else 1

project_15 = putStrLn $ Numeric.showFFloat Nothing solution "" 
  where solution = binomial 40 20