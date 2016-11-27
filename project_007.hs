primes :: [Integer]
primes = prime [2..]
  where prime (p:xs) = p : prime [x | x <- xs, mod x p > 0]

-- take the 10001th number in list
project_7 = primes !! 10000