import System.IO

data Tudos = Tudos {
    nev :: String,
    nemzetiseg :: String,
    szEv :: Int,
    hEv :: Maybe Int
    } deriving (Show)

myDecode ls = Tudos {nev = nevl, nemzetiseg = nemzetisegl, szEv= szEvl, hEv = hEvl}
    where
        nevl = ls !! 0
        nemzetisegl = ls !! 1
        szEvl = read (ls !! 2) :: Int
        hEvl = if length ls == 4 then Just (read (ls !! 3) :: Int) else Nothing

halmaz [] = []
halmaz (k:ve) = k : halmaz [x | x <- ve, x /= k]
halmazN [] = []
halmazN (k : ve) = (nemzetiseg k) : halmazN [ x | x <- ve, nemzetiseg x /= nemzetiseg k]

aux tudos nem = ( nem, [(nev x, szEv x, hEv x) | x <- tudos, nemzetiseg x == nem] )

myPrint (nem, tudosLs) = do
    let fName = nem ++ "_tudosok.txt"
    writeFile fName $ unlines [show (nev x) ++ " " ++ show (szEv x) ++ " " ++ show (hEv x) | x <- tudosLs]
    putStrLn $ "File created: " ++ fName

korf x = case hEv x of
    Just ev -> ev - szEv x
    Nothing -> 2025 - szEv x


main = do
    inf <- readFile "tudosok.txt"
    let temp = map myDecode $ filter (not.null) $ map words $ lines inf

    let lsNemzetisegek = halmazN temp

    let nem = "magyar"
    let lsNemzetiseg = filter (\x -> nemzetiseg x == nem) temp

    mapM_ (\nem -> 
        let tudosok = filter (\x -> nemzetiseg x == nem) temp
        in myPrint (nem, tudosok)
        ) lsNemzetisegek