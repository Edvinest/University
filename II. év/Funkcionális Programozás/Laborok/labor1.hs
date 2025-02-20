osszegek :: Int -> Int -> Int
osszegek x y = x + y

kulonbsegek :: Int -> Int -> Int
kulonbsegek x y = x - y

szorzatok :: Int -> Int -> Int
szorzatok x y = x * y

hanyados :: Int -> Int -> Int
hanyados x y = x `div` y

osztasiMaradek :: Int -> Int -> Int 
osztasiMaradek x y = x `mod` y

elsofokuGyok :: Double -> Double -> Double 
elsofokuGyok a b 
          | b /> 0 = a / b
          | otherwise = error "nullával osztás"

