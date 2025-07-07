lista1 n = [i*i | i <- [1..2*n], even i]

lista1_ n = take n [i*i | i <- [1..2*n], even i]

lista1__ n = take n [i*i | i <- [2,4..]]