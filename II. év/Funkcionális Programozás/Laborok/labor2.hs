import Data.Complex

proba = "hello vilag" 

myAbs :: (Num a, Ord a) => a -> a
--myAbs :: Int -> Int --ebben az esetben nem hasznalhato rac szamokra valos szamokra
myAbs x = if x < 0 then (-x) else x

mySign x
    | x < 0 = -1
    | x == 0 = 0
    | otherwise = 1

myEquation2 :: (Floating x, Ord x) => x -> x -> x -> (x, x)
myEquation2 a b c  
    | delta < 0 = error "komplex gyokok"
    | otherwise = (x1, x2)
        where
            delta = b * b - 4 * a * c
            tempA = 2 * a
            x1 = (-b - sqrt delta) / tempA
            x2 = (-b + sqrt delta) / tempA


myEq t1 t2
    | x == u && y == v = True
    | x == v && y == u = True
    | otherwise = False
        where
            (x, y) = t1
            (u, v) = t2

myPow :: (Integral a, Real b) => b -> a -> b
myPow x n
    | n < 0 = error ("negativ kitevo")
    | n == 0 = 1
    | otherwise = x * myPow x (n - 1)

myPow1 :: (Integral a, Real b) => b -> a -> b
myPow1 x n
    | n < 0 = error ("negativ kitevo")
    | n == 0 = 1
    | otherwise = x 

myPow2 :: (Integral a, Real b) => b -> a -> b
myPow2 x n = auxPow 1 x n 
    where
        auxPow :: (Integral a, Real b) => b -> b -> a -> b
        auxPow r x n
            | n < 0 = error ("negativ kitevo")
            | n == 0 = r
            | otherwise = auxPow(r * x) x (n - 1)

myPow3 :: (Real b, Integral a) => b -> a -> b
myPow3 x n 
    | n == 0 = 1
    | even n2 = r * r 
    | otherwise = x * r * r
        where  
            k = div n 2
            r = myPow3 x n2

-- myPow4 x n 
--     | n == 0 = 1
--     | even n = half * half
--     | otherwise = x * half * half  
--         where 
--             n2 - div n 2
--             --half         

myFunc1 x = [i | i <- [1..x]]

myFunc2 x = [sqrt i | i <- [1..x]]

myFunc3 x = [(i, sqrt i ) | i <- [1..x]]

myFunc4 ls = [(i, sqrt i) | i <- ls]

main = do 
    mapN_ print (myFunc2 10)