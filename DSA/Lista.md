### Egyszeresen láncolt lista

A láncolt lista egy olyan adatszerkezet, amely egymásra hivatkozó elemekbol áll, amelyeket láncolatnak nevezünk. Minden láncolat tartalmazza a benne tárolt adatot, valamint egy mutatót vagy referenciát a következő láncolatra. Ez a magyarázata annak, hogy míg a tömböknél a lineáris sorrendet a tömbindexek határozzák meg, ezzel szemben a láncolt listákban mutatók valósítják meg az elemek lineáris elrendezettségét.

**Létrehozás**
```
typedef struct Node{ 
	int data; 
	struct Node* next; 
}Node;
```

**Helyfoglalás és kezdőérték**
```
Node *newNode(int new_data) { 
	Node* new_node = (Node*)malloc(sizeof(Node)); 
	
	if(!new_node) { 
		printf(MEMORY_ALLOCATION_ERROR_MESSAGE);
		exit(MEMORY_ALLOCATION_ERROR_CODE); 
		} 
			
	// insert the data 
	new_node->data = new_data; 
	new_node->next = NULL; 
	
	return new_node; 
}
```

**Üres lista ellenőrzése**
```
bool isEmpty(Node *head) { 
	return head == NULL; 
}
```

**Új csomópont beszúrása a lista elejére**
```
void insertAtBeginning(Node** head_ref, int new_data) { 

	// Allocate memory to a node 
	Node* new_node = newNode(new_data); 
	new_node->next = (*head_ref); 
	
	// Move head to new node 
	(*head_ref) = new_node; 
}
```

**Csomópont beszúrása egy adott címre**
```
void insertAfter(Node* prev_node, int new_data) { 

	if (prev_node == NULL) { 
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAG E"); 
		return; 
	} 
	
	Node* new_node = newNode(new_data); 
	new_node->next = prev_node->next; 
	prev_node->next = new_node;
}
```

**Csomópont beszúrása a lista végére**
```
void insertAtEnd(Node** head_ref, int new_data) { 
	Node* new_node = newNode(new_data); 
	Node* last = *head_ref; 
	
	if (isEmpty(*head_ref)) { 
		*head_ref = new_node; 
		return; 
	} 
	
	while (last->next != NULL) last = last- >next; 
	last->next = new_node; 
}
```

**Első csomópont törlése**
```
void deleteFromBeginning(Node **head_ref) { 
	if(isEmpty(*head_ref)) { 
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE");
		return; 
	} 
	
	Node *temp = *head_ref; 
	*head_ref = (*head_ref)->next; 
	free(temp); 
}
```

**Utolsó csomópont törlése**
```
void deleteFromEnd(Node **head_ref) { 
	if(isEmpty(*head_ref)) {
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE"); 
		return; 
	} 
		
	Node* last = *head_ref, *prev; 
	
	while (last->next != NULL) { 
		prev = last; 
		last = last->next; 
	} 
	
	prev->next = NULL; 
	free(last); 
}
```

**Adott csomópont törlés**
```
void deleteNode(Node** head_ref, int key) { 
	Node *temp = *head_ref, *prev; 
	
	if (temp != NULL && temp->data == key) { 
		*head_ref = temp->next; 
		free(temp); 
		return; 
	} 
	
	// Find the key to be deleted 
	while (temp != NULL && temp->data != key) { 
		prev = temp; 
		temp = temp->next; 
	} 
	
	// If the key is not present 
	if (temp == NULL) return; 
	
	// Remove the node 
	prev->next = temp->next; 
	free(temp); 
}
```

**Adott csomópont keresése**
```
bool searchNode(Node* head_ref, int key) { 
	Node* current = head_ref; 
	
	while (current != NULL) { 
		if (current->data == key) return true; 
		current = current->next; 
	} 
	
	return false; 
}
```

**Lista kiírása**
```
void printList(Node* node) { 
	while (node != NULL) { 
		printf("%4d ", node->data); 
		node = node->next; 
	} 
}
```

**Lista elemének rendezése**
```
void sortLinkedList(Node *head_ref) { 
	Node *p = (head_ref); 
	Node *q; 
	
	while (p->next != NULL) { 
		q = p->next;
		
		while (q != NULL) { 
			if (p->data > q->data) { 
				int aux = p->data; 
				p->data = q->data; 
				q->data = aux; 
			} 
			q = q->next; 
		} 
		p = p->next; 
	} 
}
```

**Rendezett lista létrehozása**
```
void orderedList(Node **head_ref, int new_data) { 
	Node *prev=NULL, *last=NULL; 
	Node *node = newNode(new_data); 
	
	if (isEmpty(*head_ref)) { 
		(*head_ref) = node; 
		return; 
	} 
	
	else { 
		if ((*head_ref)->data >= new_data) { 
			insertAtBeginning(head_ref, new_data); 
			return; 
		} 
	} 
	
	last = (*head_ref); 
	prev = NULL; 
	
	while (last != NULL && last->data <= new_data) { 
		prev = last; 
		last = last->next; 
	} 
	
	node->next = last; 
	if (prev != NULL) { 
		prev->next = node; 
	} 
}
```
### Duplán láncolt lista

A duplán vagy kétszeresen láncolt lista olyan adatszerkezet, amelyben minden elem két mutatót tartalmaz: az egyik a következő elemre mutat, a másik pedig az előző elemre mutat.

**Létrehozás**
```
typedef struct Node{ 
	int data; 
	struct Node* next, *prev; 
}Node;
```

**Helyfoglalás és kezdőérték**
```
Node *newNode(int new_data) { 
	Node *newItem = (Node*) malloc(sizeof (Node)); 
	
	if(!newItem) { 
		printf("MEMORY_ALLOCATION_ERROR_MESSAGE"); 
		exit(-1); 
	} 
	
	newItem->data = new_data; 
	newItem->next = NULL; 
	newItem->prev=NULL; 
	
	return newItem; 
}
```

**Üres lista ellenőrzése**
```
bool isEmpty(Node *head) { 
	return head == NULL; 
}
```

**Csomópont beszúrása a lista elejére**
```
void insertAtBeginning(Node **head_ref, int new_data) { 
	Node* temp = newNode(new_data); 
	
	if(isEmpty(*head_ref)) { 
		*head_ref = temp; 
		return; 
	} 
	
	temp->next = *head_ref; 
	(*head_ref)->prev=temp; 
	*head_ref = temp; 
}
```

**Csomópont beszúrása egy adott pontra**
```
void insertAfter(Node *prev_ref, int new_data) { 
	if(prev_ref == NULL) { 
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE"); 
		return;
	}

	Node* new_node = newNode(new_data); 
	
	if (prev_ref->next != NULL) { 
		new_node->next = prev_ref->next; 
		prev_ref->next->prev = new_node; 
	} 
	
	prev_ref->next = new_node; 
	new_node->prev = prev_ref;
}
```

**Csomópont beszúrása a lista végére**
```
void insertAtEnd(Node **head_ref, int new_data) { 
	if(isEmpty(*head_ref)) { 
		*head_ref = newNode(new_data); 
		return; 
	} 
	
	Node *temp = *head_ref,*last; 
	
	while(temp->next != NULL) { 
		temp = temp->next; 
	} 
	
	last=newNode(new_data); 
	temp->next = last; 
	last->prev=temp; 
}
```

**Első csomópont törlése**
```
void deleteFromBeginning(Node **head_ref) { 
	if(isEmpty(*head_ref)) {
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE"); 
		return; 
	} 
	
	Node *temp = *head_ref; 
	*head_ref = (*head_ref)->next; 
	free(temp); 
}
```

**Utolsó csomópont törlése**
```
void deleteFromEnd(Node **head_ref) { 
	if(isEmpty(*head_ref)) {
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE"); 
		return; 
	} 
	
	Node* last = *head_ref, *prev; 
	while (last->next != NULL) { 
		prev = last; 
		last = last->next;
	}
	
	prev->next = NULL; 
	free(last); 
}
```

**Adott csomópont törlése**
```
void deleteNode(Node **head_ref, int key) { 
	if (isEmpty(*head_ref)) {
		printf("NULL_POINTER_EXCEPTION_ERROR_MESSAGE"); 
		return; 
	} 
	
	if ((*head_ref)->data == key) { 
		deleteFromBeginning(head_ref); 
		return; 
	} 
	
	Node *temp = (*head_ref)->next; 
	Node *prev = *head_ref; 
	
	while (temp != NULL && temp->data != key) { 
		prev = temp; 
		temp = temp->next; 
	} 
	
	if (temp != NULL) { 
		prev->next = temp->next; 
		
		if (temp->next != NULL) { 
			temp->next->prev = prev; 
		}
		
		free(temp); 
	} 
}
```

**Adott csomópont keresése**
```
bool searchNode(Node* head_ref, int key) { 
	Node* current = head_ref; 
	
	while (current != NULL) { 
		if (current->data == key) return true; 
		
		current = current->next; 
	} 
	
	return false; 
}
```

**Lista kiírása (elsőtől utolsóig)**
```
void printListFromBegin(Node *node) { 
	Node* temp = node; 
	
	while(temp != NULL) { 
		printf("%i -> ", temp->data); 
		temp = temp->next; 
	} 
	
	printf("NULL\n"); 
}
```

**Lista kiírása (utolsótól elsőig)**
```
void printListFromEnd(Node *node) { 
	Node* temp = node; 
	
	while(temp->next != NULL) {
		temp=temp->next;
	} 
	
	while(temp != NULL) { 
		printf("%i -> ", temp->data); 
		temp = temp->prev; 
	} 
	
	printf("NULL\n"); 
}
```