import System.IO
import Data.List
import Data.Maybe

data Point = Point {pointID :: Int, color :: String, father :: Int, distance :: Int} deriving (Show)

defaultPoint :: Int -> Point
defaultPoint pid = Point{pointID = pid, color = "white", father = 0, distance = maxBound}

parseEdge :: String -> Maybe (Int, Int)
parseEdge line = case map read (words line) of
    [u, v] -> Just (u, v)
    _      -> Nothing

readGraph :: FilePath -> IO ([Point], [(Int, Int)])
readGraph filepath = do
    contents <- readFile filepath
    let allLines = lines contents
        (header:edgeLines) = allLines
        [n, _] = map read (words header)
        points = map defaultPoint [1 .. n]
        edges = mapMaybe parseEdge edgeLines
    return (points, edges)

getNeighbors :: Int -> [(Int, Int)] -> [Int]
getNeighbors u edges = [v | (x, v) <- edges, x == u] ++ [x | (x, v) <- edges, v == u]


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
                                    then pv {color = "gray", distance = (getDistance accPoint u) +1, father = u}
                                    else p) accPoint
                else accPoint
        in
            foldl updateNeighbors pointsAfterU neighbors

getDistance :: [Point] -> Int -> Int
getDistance points pid = maybe maxBound distance (find (\p -> pointID p == pid) points)

bfs :: [Point] -> [(Int, Int)] -> Int -> [Point]
bfs points edges startingPoint = 
    let 
        initializedPoints = map (\p -> if pointID p == startingPoint then p {color = "gray", distance = 0} else p) points

        loop :: [Point] -> [Int] -> [Point]
        loop pts [] = pts
        loop pts (u:queue) =
            let
                neighbors = getNeighbors u edges
                updatePts = updatePoints pts u neighbors
                newGrayNodes = [v | v <- neighbors, let Just p = find (\pt -> pointID pt == v) updatePts, color p == "gray", notElem v queue]
                newQueue = queue ++ newGrayNodes
            in
                loop updatePts newQueue
        in loop initializedPoints [startingPoint]

main :: IO()
main = do
    (points, edges) <- readGraph "graf.txt"
    putStrLn "Vertices:"
    mapM_ print points
    putStrLn "\nEdges:"
    mapM_ print edges

    let result = bfs points edges 1
    putStrLn "\nBFS:"
    mapM_ print result