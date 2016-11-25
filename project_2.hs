project_2 = sum [ x | x <- takeWhile (< 4000000) fibos, even x]
  where
    fibos = [1, 2] ++ zipWith (+) fibos (tail fibos)