A hasító tábla egy olyan adatszerkezet, amely kulcs-érték párok hatékony tárolására szolgál. A hasító táblák alapvetően arra tervezték, hogy gyors adatelérési, beszúrási és törlési műveleteket biztosítsanak.

### Hasító tábla implementálása
```
#define CAPACITY 31 

typedef struct { 
	int key; 
	int data; 
} HashItem; 

typedef struct { 
	HashItem *items;
	int size; 
}HashTable; 

static HashItem dummyData = {-1, 0};
```

### Helyfoglalás
```
void createHashArray(HashTable *pHashTable) { 
	pHashTable->items = (HashItem*)calloc(CAPACITY, sizeof(HashItem));
	
	if(!pHashTable->items) { 
		printf(MEMORY_ALLOCATION_ERROR_MESSAGE);
		exit(MEMORY_ALLOCATION_ERROR_CODE); 
} 

	for (int i = 0; i < CAPACITY; ++i) { 
		pHashTable->items[i] = dummyData; 
	} 
	
	pHashTable->size = 0; 
}
```

### Egy elem létrehozása
```
HashItem createHashItem(int key, int data) { 
	HashItem item = {key, data}; 
	return item; 
}
```

### Hasító függvény
```
int hashCode(int key) { 
	return key % CAPACITY; 
}
```

### Egy elem beszúrása a táblázatba
```
void insert(HashTable *hashTable, int key, int data) { 
	if(hashTable->size >= CAPACITY) return; 
	
	int index = hashCode(key); 
	int i = 0; 
	
	while (hashTable->items[(index + i)%CAPACITY].key != dummyData.key)
	{ 
		i++; 
	} 
	
	hashTable->items[(index+i)%CAPACITY] = createHashItem(key, data);
	hashTable->size++; 
}
```