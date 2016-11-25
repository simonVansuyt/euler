somDigits n = sum [nth x | x <- [1..len]]
  where
    nth x = div (mod n (10^x)) (10^(x-1))
    len = length (show n) 

project_16 = somDigits (2^1000) 