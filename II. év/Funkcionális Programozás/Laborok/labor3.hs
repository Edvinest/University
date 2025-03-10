-- II. rész
-- a. Meghatározza egy lista elemszámát, 2 módszerrel (myLength)
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use min" #-}

myLengthRec :: [a] -> Int
myLengthRec [] = 0
myLengthRec (_:xs) = 1 + myLengthRec xs

myLengthAcc :: [a] -> Int
myLengthAcc xs = helper xs 0
    where
        helper [] acc = acc
        helper (_:xs) acc = helper xs (acc + 1)

-- b. Összeszorozza a lista elemeit, 2 módszerrel (myProduct)

myProductRec :: (Num a) => [a] -> a
myProductRec [] = 1
myProductRec (x:xs) = x * myProductRec xs

myProductAcc :: (Num a) => [a] -> a
myProductAcc xs = helper xs 1
    where
        helper [] acc = acc
        helper (x:xs) acc = helper xs (acc * x)


-- c. Meghatározza egy lista legkisebb elemét (myMinimum)

myMinimum :: (Ord a) => [a] -> a
myMinimum [] = error "Üres lista, nincs minimum értéke"
myMinimum [x] = x
myMinimum (x:y:xs) = myMinimum((if x < y then x else y) : xs)

-- d. Meghatározza egy lista legnagyobb elemét (myMaximum)

myMaximum :: (Ord a) => [a] -> a
myMaximum [] = error "Üres lista, nincs maximum értéke"
myMaximum [x] = x
myMaximum (x:y:xs) = myMaximum((if x > y then x else y) : xs)

-- e. Meghatározza egy lista n-ik elemét

myNthElement :: [a] -> Int -> a
myNthElement [] _ = error "A lista túl rövid"
myNthElement (x:xs) 0 = x
myNthElement (_:xs) n
    | n < 0     = error "Az index nem lehet negatív"
    | otherwise myNthElement xs (n - 1)

-- f. Egymás után fűzi a paraméterként megadott két listát

myAppend :: [a] -> [a] -> [a]
myAppend [] ys = ys
myAppend (x:xs) ys = x : myAppend xs ys

-- g. Megállapítja egy listáról, hogy az palindrom-e vagy sem

myIsPalindrome :: (Eq a) => [a] -> Bool
myIsPalindrome [] = True
myIsPalindrome [_] = True
myIsPalindrome(x:xs)
    | x == last xs = myIsPalindrome (init xs)
    | otherwise = False

