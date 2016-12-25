import Data.Set

-- delete dulpicates from a list -- 
delDup :: Ord a => [a] -> [a]
delDup = toList . fromList

project_029 = length $ delDup [a^b | a <- [2..100], b <- [2..100]]