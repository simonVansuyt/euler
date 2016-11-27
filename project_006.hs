-- The sum of the squares
sumSqrt :: Integer -> Integer
sumSqrt n = sum [ x^2 | x <- [1..n]]

-- The square of the sum
sqrtSum :: Integer -> Integer
sqrtSum n = (sum [1..n])^2

project_6 = sqrtSum(100) - sumSqrt(100)