A bináris keresőfa (BST - Binary Search Tree) egy olyan bináris fa, amelynek csomópontjai rendezett módon vannak elhelyezve. A bináris keresőfa két fő tulajdonsága miatt kiemelkedően hasznos adatszerkezet: 
**Rendezési Tulajdonság**: Minden csomópontban lévő érték nagyobb, mint az annak bal részfájában található összes érték, és kisebb, mint a jobb részfájában található összes érték. 
**Bal és Jobb Részfák**: Minden csomópont két részfát tartalmaz, egy bal és egy jobb részfát. A bal részfában lévő csomópontok értékei kisebbek, a jobb részfában lévők pedig nagyobbak, mint a szülőjük értéke.

### Új csomópont beszúrása
```
Node *insert(Node *node, int key) { 
	if (node == NULL) { 
		node = createNewNode(key); 
		return node; 
	} 
	
	if (key < node->info) { 
	node->left = insert(node->left, key); 
	} 
	
	else { 
		node->right = insert(node->right, key); 
	} 
	
	return node; 
}
```

### Fa minimuma és maximuma
```
Node *minValueNode(Node *node) { 
	Node *current = node; 
	
	while (current != NULL && current->left != NULL) { 
		current = current->left; 
	} 
	
	return current; 
} 

Node *maxValueNode(Node *node) { 
	Node *current = node; 
	
	while (current != NULL && current->right != NULL) { 
		current = current->right; 
	} 
	
	return current; 
}
```

### Fa elemének keresése
```
Node *searchNode(Node *root, int key) { 
	if (root==NULL) return NULL; 
	
	if(keyinfo){
		return searchNode(root->left,key);
	} 
	
	else if(key>root->info) { 
		return searchNode(root->right,key);
	} 
	
	else return root; 
}
```

### Fa elemének törlése
```
Node *deleteNode(Node *root, int key) { 
	if (root == NULL) { 
		return NULL; 
	} 
	
	if (root->info < key) { 
		root->right = deleteNode(root->right, key); 
		return root; 
	} 
	
	else if (root->info > key) { 
		root->left = deleteNode(root->left, key); 
		return root; 
	} 
	
	else { 
		if (root->left == NULL && root->right == NULL) { 
			free(root); 
			return NULL; 
		} 
		
		else if (root->right == NULL) { 
			Node *temp = root->left; 
			free(root); 
			return temp; 
		} 
		
		else if (root->left == NULL) { 
			Node *temp = root->right; 
			free(root); 
			return temp; 
		} 
		
		Node *temp = minValueNode(root->right); 
		root->info = temp->info; 
		root->right = deleteNode(root->right, temp->info); 
		
		return root; 
	} 
}
```