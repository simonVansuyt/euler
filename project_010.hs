primes = prime [2..]
  where prime (p:xs) = p : prime [x | x <- xs, mod x p > 0]

project_10 = sum (takeWhile (<2000000) primes)