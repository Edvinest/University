Listákon való iterálás
```h
% ha műveleteket akarunk végezni egyesével az elemeken
% egyetlen 1 elemet ad vissza a végén
% összegeknél, szorzatoknál és adatstruktúrák építésénél használatos
foldl `function` accumulator []

% foldl először a bal oldali elemet veszi
% pl foldl (+) 0 [1, 2, 3]
% (((0+1) + 2 ) + 3)

foldr `function` accumulator []
% foldr először a jobb oldali elemet veszi
% pl foldr (+) 0 [1, 2, 3]
% 1 + (2 + (0+ 3))

% ha le akarunk futtatni egy függvényt egy lista minden elemén
% listát ad vissza
% map function [list]
% pl map (*2) [1, 2, 3] beszoroz minden elemet 2-vel
```

Beolvasás
```h
contents <- readFile "input.txt"

let input = map (myDecode . words) & lines contents

% beolvassuk az egész fájét, feldaraboljuk sorokra, majd a sorokat szavakra
% a . összefűz két függvényt
```