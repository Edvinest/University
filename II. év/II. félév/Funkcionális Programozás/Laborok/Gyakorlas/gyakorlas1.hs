searchGrade :: Double -> [Double] -> IO()
searchGrade target xs = do
    let numAppearances = length(filter (== target) xs)
    let smallerThan = length(filter (< target) xs)
    let greaterThan = length(filter (> target) xs)

    if numAppearances == 0
        then putStrLn "Grade doesn't appear in list"
    else putStrLn $ "Grades equal to searched: " ++ show numAppearances
    
    if smallerThan == 0
        then putStrLn "No smaller grades than the searched one"
    else putStrLn $ "Grades smaller than searched: " ++ show smallerThan
    
    if greaterThan == 0
        then putStrLn "No grades greater than the searched one"
    else putStrLn $ "Grades greater than searched: " ++ show greaterThan