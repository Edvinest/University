Big O - algoritmus legrosszabb esetben értelmezett időbonyolultsága
Omega - algoritmus időbonyolultságának legjobb esete
Theta - algoritmus időbonyolultságának átlagos esete

### O(1)
Nem függ a bemenet méretétől.
Pl:
```
int main() { 
	int number; 
	printf("Enter an integer number:"); 
	scanf("%i", &number); 
	printf("The value of the number is: %i", number); 
	return 0; 
}
```

### O(n)
Az algoritmus végrehajtási ideje ideje lineárisan növekszik a bemenet hosszától.
Pl:
```
int main(){\
	int array[7] = {1, 2, 3, 4, 5, 6, 7}; 
	printf("The elements of the array are:"}; 
	for(int i = 0; i < 7; ++i) { 
		printf("array[%i]: %i ", i, array[i]); 
		} 
	return 0;
}
```

### O(log n)
A logaritmikus idobonyolultság jellemzője, hogy a bemeneti adathalmaz mennyiségét minden lépéssel csökkenti. Ezzel a jelenséggel leggyakrabban bináris fák esetén, vagy bináris keresés során találkozhatunk.
```
int binarySearch(int array[], int x, int low, int high) { 
	if (high >= low) { 
		int mid = low + (high - low) / 2; 
		
		// If found at mid, then return it 
		if (array[mid] == x) return mid; 
		
		// Search the left half 
		if (array[mid] > x) return binarySearch(array, x, low, mid - 1); 
		
		// Search the right half 
		return binarySearch(array, x, mid + 1, high); 
		}
		 
	return -1; 
}
```

### O(n²)
Négyzetes idobonyolultságról akkor beszélünk, ha a program végrehajtási ideje nem-lineárisan nő a bemenet hosszának függvényében. Ennek egyik legegyszerűbb szemléltetése a mátrixok beolvasása vagy kiírása lehet, amelyhez két egymásba ágyazott ciklus szükséges.
```
for(int i = 0; i < n; ++i) { 
	for(int j = 0; j < n; ++j) { 
		printf("%i ", matrix[i][j]); 
	} 
	printf("\n"); 
}
```