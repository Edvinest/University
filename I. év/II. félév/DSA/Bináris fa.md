A fa egy hierarchikus, ciklikusat nem tartalmazó gráfot ábrázoló adatszerkezet, amely különbözo szintű csomópontokból és ezek közötti élekből áll. A fa egyetlen gyökércsomópontból indul, és a gyökércsomópontból kiinduló élek mentén haladva elérhetőek a fa többi csomópontjai.

### Tulajdonságai: 
1. **Gyökér**: A fa legfelső szintjén lévő csomópont, amely nem rendelkezik szülő csomóponttal. 
2. **Csomópontok**: A fa minden eleme egy csomópont, amely lehet levél (nincs leszármazottja, gyereke) vagy belső csomópont (legalább egy leszármazottja van). 
3. **Élek**: összekötik a csomópontokat a fa struktúrájában. Minden él egy szülő és egy gyerek csomópontot köt össze. 
4. **Levelek**: A levelek a fa legalsó szintjén lévő csomópontok, amelyeknek nincs gyerekcsomópontja. 
5. **Szintek**: A fa szintjei a gyökértől való távolságot jelentik. A gyökér szintje 0, az azt követő szint 1, és így tovább. 
6. **Mélység**: A fa mélysége a legmélyebb levél csomópontok szintje. 
7. **Rang és fokszám**: A rang a gyökértől való távolságot jelenti, a fokszám pedig egy csomópont ágainak számát.

### Bináris fa definiálása

```
typedef struct Node { 
	int info; 
	struct NodeType *left, *right; 
}Node;
```

### Új csomópont helyfoglalása, kezdőértékadás

```
Node *createNewNode(int newData) { 
	Node *newItem = (Node *) malloc(sizeof(Node *)); 
	
	if (!newItem) { 
		printf(MEMORY_ALLOCATION_MESSAGE); 
		exit(MEMORY_ALLOCATION_ERROR); 
		} 
		
	newItem->info = newData; 
	newItem->left = newItem->right = NULL; 
	return newItem; 
}
```

### Csomópont beszúrása balra

```
Node *insertLeft(Node *root, int newData) { 
	root->left = createNewNode(newData); 
	return root->left; 
}
```

### Csomópont beszúrása jobbra

```
Node *insertRight(Node *root, int newData) { 
	root->right = createNewNode(newData); 
	return root->right; 
}
```

### Fa bejárása - gyökér, bal, jobb (preorder)

```
void preorderTraversal(Node *root) { 
	if (root != NULL) { 
		printf("%i ", root->info); 
		preorderTraversal(root->left); 
		preorderTraversal(root->right); 
	} 
}
```

Ez a bejárás különösen hasznos fák szerkezetének kiértékelésében, vagy olyan műveletek esetén, amikor fontos a csomópontok meglátogatásának sorrendje.

### Fa bejárása - bal, gyökér, jobb (inorder)

```
void inorderTraversal(Node *root) { 
	if (root != NULL) { 
		inorderTraversal(root->left); 
		printf("%i ", root->info); 
		inorderTraversal(root->right); 
	} 
}
```

Az inorder bejárás különösen hasznos bináris keresőfák szerkezetének kiértékelésében, mivel ez a bejárás típus tükrözi a fák rendezettségét, lehetővé téve a csomópontok értékeinek növekvő sorrendben történő kiértékelését. Ez a bejárás ideális adatstruktúrák rendezésére vagy keresésére, amikor fontos a rendezett sorrend betartása.

### Fa bejárása - bal, jobb, gyökér

```
void postorderTraversal(Node *root) { 
	if (root != NULL) { 
		postorderTraversal(root->left); 
		postorderTraversal(root->right); 
		printf("%i ", root->info); 
	} 
}
```

A postorder bejárás különösen hasznos fák szerkezetének kiértékelésében és azok műveleteiben, ahol fontos a gyökércsomópontok meglátogatásának sorrendje a részfák teljes bejárása után. Például, ez a bejárás ideális a bináris fák kiértékelésére vagy azok memóriából való felszabadítására, mivel biztosítja, hogy egy csomópontot csak azután látogatunk meg és dolgozunk fel, hogy minden alatta lévő részfát teljesen bejártunk.