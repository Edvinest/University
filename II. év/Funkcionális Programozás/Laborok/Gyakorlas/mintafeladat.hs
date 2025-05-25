import System.IO
import Data.List

data Olimpia = Olimpia {
    oOrszag :: String,
    oSportag :: [(String, Int)]
} deriving Show


myDecode :: String -> Olimpia
myDecode sor = Olimpia {oOrszag = trim country, oSportag = sports}
 where
    (country, rest) = break (== '[') sor
    replaced = map (\c -> if c `elem` "[],()" then ' ' else c) rest
    ws = words replaced
    sports = build ws
    build [] = []
    build (sport:score:xs) = (sport, read score) : build xs
    build _ = [] 
    trim = reverse . dropWhile (`elem` " \t") . reverse . dropWhile (`elem` " \t")


main :: IO ()
main = do
  contents <- readFile "sportolimpia.txt"

  let temp = map myDecode $ filter (not . null) $ lines contents

  mapM_ print temp