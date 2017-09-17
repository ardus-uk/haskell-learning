count :: Char -> String -> Int
count x [] = 0
count x (y:ys) | y == x = 1 + count x ys
                      | otherwise = count x ys