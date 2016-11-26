import Data.List.Split

-- creating factorial n
factorial :: Integer -> Integer
factorial n = if n > 1 then factorial(n-1) * n else 1

project_20 = sum $ numbers listChar
  where
    factorialStr = show (factorial 100)
    -- split in Char
    listChar = splitOn "" factorialStr
    -- creating numbers list
    numbers (p:xs) = map read $ xs :: [Int]
