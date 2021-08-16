quicksort [] = []
quicksort (x : xs) = quicksort esquerdaDeX ++ [x] ++ quicksort direitaDeX
  where
    esquerdaDeX = [y | y <- xs, y < x]
    direitaDeX = [y | y <- xs, y >= x]