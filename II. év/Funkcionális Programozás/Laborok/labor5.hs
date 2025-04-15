import Data.List (sortOn)

ls = [
    ("beteg1", [(70, 120), (75, 115), (70, 150)], 1998),
    ("beteg2", [(68, 120), (75, 190), (72, 102)], 1960),
    ("beteg3", [(70, 110), (75, 155), (74, 90)], 2002)
    ]

feladat1 ls = do
    let sortLs = sortOn criteria ls
    mapM_ print sortLs
  where
    criteria (name, records, year) = year

feladat2 ls = do
    let filterLs = filter criteria ls
    mapM_ print filterLs
  where
    criteria(name, records, year) = null $ filterCriteria records
    filterCriteria = filter filterFunction
      where 
        filterFunction(v1, v2) = (v1 < 130 && v1 > 100) || (v2 < 85 && v2 > 60)