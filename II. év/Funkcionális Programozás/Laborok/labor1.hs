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
          | b > 0 = a / b
          | otherwise = error "nullával osztás"

abszolutErtek :: (Num a, Ord a) => a -> a
abszolutErtek x
          | x < 0   = - x
          | otherwise = x

elojel :: (Num a, Ord a) => a -> a
elojel x
          | x < 0   = -1
          | x > 0   = 1
          | otherwise = 0

ketSzamMax :: (Ord a) => a -> a -> a
ketSzamMax x y
          | x > y   = x
          | otherwise = y

ketSzamMin :: (Ord a) => a -> a -> a
ketSzamMin x y
          | x < y   = x
          | otherwise = y

