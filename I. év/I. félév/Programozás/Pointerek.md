# Pointerek

int *[20] - array of 20 pointers to integers  
int (*b)[20] - pointer that points at an array of integers (sizeof(b) = 4)  
int *a[20] - an array where each element is a pointer to an integer  
  
## Malloc
malloc() - memory allocation - dinamikusan helyet foglal egy nagy darab egységet a memóriában, meghatározott mérete van.

**ptr = (cast-type\*) malloc(byte-size)** 

Pl: int* ptr = (int*) malloc(5*sizeof(int)) -> 20 byte-ot foglal le  

Ha nincs elég hely, nem sikerül helyet foglalni, akkor NULL pointer-t térít vissza.

### Matrix pointer
```
int n,m;
scanf("%i%i", &n, &m);
int **b = (int*) malloc(n*sizeof(int*));
if (!b) {...}
for(int i = 0; i < n; ++i){
    b[i] = (int*) malloc(m*sizeof(int));
    if (!b){...}

for(int i = 0; i < n; ++i){
    for(int j = 0; j < m; ++j){
        scanf("%i", &b[i][j]);
    }
}

for(int i = 0; i < n; ++i){ free(b[i])}
free(b);

return 0;
}
```

## Calloc
calloc() - contigious allocation - hasonló a malloc-hoz, minden egység alapértéke 0. Két paramétere van.  

**ptr = (cast-type\*) calloc(n, element-size)**

Pl: ptr = (int*) calloc(5, sizeof(int)) -> 5 egységnyi 4 byte, szóval 20 byte memória.  

Ha nincs elég hely, nem sikerül helyet foglalni, akkor NULL pointer-t térít vissza.  

## Free
free() - dinamikus kiüríti a memóriát. A calloc és malloc nem üríti a memóriát magától.  

**free(ptr)**

## Realloc
realloc() - dinamikusan átállítható az előzőleg lefoglalt memória.

**ptr = realloc(ptr, newSize)**

Ha nincs elég hely, nem sikerül helyet foglalni, akkor NULL pointer-t térít vissza.