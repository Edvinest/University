import System.IO
import Data.List
import Data.Char

data Beteg = Beteg { nev :: String, orszag :: String, szulEv :: Int, betegsegek :: [String]} deriving Show

myDecode ls =
    let bnev = unwords $ take 2 ls
        borszag = ls !! 2
        bszulEv = read (ls !! 3) :: Int
        bBetegsegek = read (unwords $ drop 4 ls) :: [String]
    in Beteg bnev borszag bszulEv bBetegsegek
main = do
    contents <- readFile "betegek.txt"
    let betegek = map myDecode $ filter (not . null) $ map words $ lines contents

    mapM_ print betegek