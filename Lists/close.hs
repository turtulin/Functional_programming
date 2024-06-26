partial :: [Int] -> [Int] -> [(Int, Int)]
partial [] [] = []
partial (x : xs) (y : ys) = (x, y) : partial xs ys

total :: [Int] -> [Int] -> [(Int, Int)]
total [] _ = []
total _ [] = []
total (x : xs) (y : ys) = (x, y) : total xs ys

open :: [(Int, Int)] -> ([Int], [Int])
open [] = ([], [])
open ((x, y) : xs) = (x : ys, y : zs)
 where
    (ys, zs) = open xs