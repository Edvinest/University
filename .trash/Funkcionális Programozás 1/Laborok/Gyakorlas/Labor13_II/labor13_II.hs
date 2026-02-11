import System.IO
import Data.Ord
import Data.List
import Data.Char

data Auto = Auto { gyartmany :: String, modell :: String, evjarat :: Int } deriving (Show, Eq)

myDecode ls = Auto {gyartmany = gyartmanyI, modell = modellI, evjarat = evjaratI}
    where
        gyartmanyI = ls !! 0
        modellI = ls !! 1
        evjaratI = read (ls !! 2) :: Int

sortByYear = sortBy (comparing evjarat)
sortByYearDesc = sortBy (flip $ comparing evjarat)

writeToFile ls = do
    putStrLn "Add meg milyen autó adatait akarod kiíratni fájlba (gyártmány)"
    gyartmanyNev <- getLine

    let filtered = filter (\auto -> map toLower (gyartmany auto) == map toLower gyartmanyNev) ls

    let linesToWrite = concatMap (\auto -> [modell auto, show(evjarat auto)]) filtered
    writeFile "gyartmany.txt" (unlines linesToWrite) 
    
capitalizeFirst (x:xs) =
    let firstChar = if isLower x then toUpper x else x
    in firstChar : xs

writeCorrected ls = do
    let linesToWrite2 = map (\auto -> capitalizeFirst (gyartmany auto) ++ " " ++ capitalizeFirst (modell auto) ++ " " ++ show(evjarat auto)) ls
    writeFile "autokJavitva.txt" (unlines linesToWrite2)    

main = do
    contents <- readFile "autok.txt"
    let autok = map myDecode $ filter (not . null) $ map words $ lines contents
    let sortedAutok = sortByYear autok
    let sortedAutokDesc = sortByYearDesc autok

    mapM_ print autok
    putStrLn "Rendezve (növekvő)"
    mapM_ print sortedAutok
    putStrLn "Rendezve (csökkenő)"
    mapM_ print sortedAutokDesc

    writeToFile autok
    writeCorrected autok