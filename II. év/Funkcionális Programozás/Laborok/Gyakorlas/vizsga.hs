import System.IO

data Cripto = Cripto {nameC :: String, keyLengthC :: [Int], encryption :: [String]} deriving (Show, Read)

myDecode ls = Cripto {nameC = nev, keyLengthC = kulcshossz, encryption = kodolas}
    where
        nev = ls !! 0
        kulcshossz = read (ls !! 1) :: [Int]
        kodolas = read (ls !! 2) :: [String]

nameAndCount ls = (names, keylength)
    where
        names = nameC ls
        keylength = length (keyLengthC ls)

main = do
    contents <- readFile "bemenet.txt"
    let beolv = map (myDecode . words) $ lines contents

    let daCount = map nameAndCount beolv

    mapM_ print beolv
    mapM_ (\(n, k) -> putStrLn $ n ++ ": " ++  show k) daCount