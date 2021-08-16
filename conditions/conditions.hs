ifPar :: Int -> Bool
ifPar n = if (mod n 2 == 0) then True else False

casePar :: Int -> Bool
casePar n = case (mod n 2 == 0) of
  False -> False
  True -> True

guardaPar :: Int -> Bool
guardaPar n
  | (mod n 2 == 0) = True
  | otherwise = False