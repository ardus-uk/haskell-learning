copy :: Int -> Char -> String
copy 0 c = []
copy n c = c:(copy (n-1) c)

blowup' :: String -> Int -> String
blowup' [] n = []
blowup' (x:xs) n = (copy n x) ++ (blowup' xs (n+1))

blowup :: String -> String
blowup xs = blowup' xs 1