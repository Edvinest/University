import System.IO
import Data.List
import Data.Maybe

data Point = Point {pointID :: Int, color :: String, father :: Int, distance :: Int} deriving (Show)

defaultPoint pid = Point {pointID = pid, color = "white", father = 0, distance = maxBound}

parseEdge :: String -> Maybe (Int, Int)
parseEdge line = case map read (words line) of
    [u, v] -> Just (u,v)
    _      -> Nothing

readGraph :: FilePath -> IO ([Point], [(Int, Int)])
readGraph filepath = do
    contents <- readFile filepath
    let allLines = lines contents
        (header:edgeLines) = allLines
        [n, _] = map read (words header)
        points = map defaultPoint [1..n]
        edges = mapMaybe parseEdge edgeLines
    return (points, edges)

getNeighbors :: Int -> [(Int, Int)] -> [Int]
getNeighbors u edges = [v | (x,v) <- edges, x == u] ++ [v | (x,v) <- edges, v == u]

updatePoints :: [Point] -> Int -> [Int] -> [Point]
updatePoints points u neighbors =
    let
        pointsAfterU = map (\p -> if pointID p == u then p {color = "black"} else p) points

        updateNeighbors :: [Point] -> Int -> [Point]
        updateNeighbors accPoint v = 
            case find (\p -> pointID p == v) accPoint of
                Just pv ->
                    if color pv == "white"
                        then map (\p -> if pointID p == v
                            then pv {color = "gray", distance = getDistance accPoint u + 1, father = u}
                            else p) accPoint
                    else accPoint
        in
            foldl updateNeighbors pointsAfterU neighbors

getDistance :: [Point] -> Int -> Int
getDistance points pid = maybe maxBound distance (find (\p -> pointID p == pid) points)

dfs :: [Point] -> [(Int, Int)] -> Int -> [Point]
dfs points edges startingPoint = 
    let
        dfsVisit :: [Point] -> Int -> [Point]
        dfsVisit pts u =
            let
                neighbors = getNeighbors u edges
                updatedPoints = updatePoints pts u neighbors

                getGrays = [pointID p | p <- updatedPoints, color p == "gray", father p == u]
            in
                foldl dfsVisit updatedPoints getGrays
    
        initializePoints = map (\p -> if pointID p == startingPoint
        then p {color = "gray", distance = 0}
        else p) points

    in
        dfsVisit initializePoints startingPoint

main :: IO()
main = do
    (points, edges) <- readGraph "graf.txt"
    putStrLn "Vertices:"
    mapM_ print points
    putStrLn "\nEdges:"
    mapM_ print edges

    putStrLn "\nDFS:"
    mapM_ print (dfs points edges 1)
