fibo = 1 : 2 : zipWith (+) fibo (tail fibo)

project_25 = fst (last index) 
  where 
    index = zip [2..] (takeWhile (<(10^999)) fibo)


