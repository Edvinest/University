-- I. rész

-- két számjegy összege
osszegek :: Int -> Int -> Int
osszegek x y = x + y

-- két számjegy különbsége
kulonbsegek :: Int -> Int -> Int
kulonbsegek x y = x - y

-- két számjegy szorzata
szorzatok :: Int -> Int -> Int
szorzatok x y = x * y

-- két szám hányadosa
hanyados :: Int -> Int -> Int
hanyados x y = x `div` y

-- két szám osztási maradéka
osztasiMaradek :: Int -> Int -> Int 
osztasiMaradek x y = x `mod` y

-- két szám elsőfokú gyöke
elsofokuGyok :: Double -> Double -> Double 
elsofokuGyok a b 
          | b > 0 = a / b
          | otherwise = error "nullával osztás"

-- Egy szám abszolút értéke
abszolutErtek :: (Num a, Ord a) => a -> a
abszolutErtek x
          | x < 0   = - x
          | otherwise = x

-- egy szám előjele
elojel :: (Num a, Ord a) => a -> a
elojel x
          | x < 0   = -1
          | x > 0   = 1
          | otherwise = 0

-- két szám közül a nagyobb
ketSzamMax :: (Ord a) => a -> a -> a
ketSzamMax x y
          | x > y   = x
          | otherwise = y

-- két szám közül a kisebb
ketSzamMin :: (Ord a) => a -> a -> a
ketSzamMin x y
          | x < y   = x
          | otherwise = y

-- egyenlet másodfokú gyökei
masodfokuGyok :: (Floating a, Ord a) => a -> a -> a -> (Maybe a, Maybe a)
masodfokuGyok a b c 
          | d < 0   = (Nothing, Nothing) -- nincs valós gyök
          | d == 0  = (Just (-b / (2*a)), Nothing) -- egy valós gyök
          | otherwise = (Just((-b + sqrt d) / (2*a)), Just((-b + sqrt d) / (2*a)))
            where d = b*b - 4*a*c

-- két elempár "majdnem" megegyezése
elemParMegegyezes :: (Eq a) => (a, a) -> (a,a) -> Bool
elemParMegegyezes (a, b) (x,y) = (a == x && b == y) || (a == y && b == x)

-- n faktoriális 3 módszerrel
-- rekurzív
faktorialisRek :: (Integral a) => a -> a
faktorialisRek 0 = 1
faktorialisRek n = n * faktorialisRek (n-1)

-- tail rekurzív
faktorialisTail :: (Integral a) => a -> a
faktorialisTail n = helper n 1
    where
        helper 0 acc = acc
        helper n acc = helper (n - 1)(n * acc)

-- listás verzió
faktorialisLista :: (Integral a) => a -> a
faktorialisLista n = product [1..n]

-- x szám n-edik hatványa 3 módszerrel
-- rekurzív
hatvanyRekurziv :: (Num a, Integral b) => a -> b -> a
hatvanyRekurziv _ 0 = 1
hatvanyRekurziv x n = x * hatvanyRekurziv x (n - 1)

-- tail
hatvanyTail :: (Num a, Integral b) => a -> b -> a
hatvanyTail x n = helper x n 1
    where
        helper _ 0 acc = acc
        helper x n acc = helper x (n - 1)(acc * x)

-- hatványozás felezéssel
hatvanyGyors :: (Num a, Integral b) => a -> b -> a
hatvanyGyors x 0 = 1
hatvanyGyors x n
    | even n    = halfPower * halfPower
    | otherwise = x * halfPower * halfPower
    where
        halfPower = hatvanyGyors x (n `div` 2)

