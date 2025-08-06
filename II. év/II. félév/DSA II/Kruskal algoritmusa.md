## Minimum Feszítő Fa (MST) megtalálása
1. Rendezzük a súlyokat növekvő sorrendben
2. Kiválasztjuk az épp legkisebb súlyu élt. Ellenőrizzük, hogy kör keletkezik-e ha behelyezzük a fába. Ha igen, elhagyjuk. Ha nem, behelyezzük a fába.
3. Addig folytatjuk a 2. lépést ameddig `Csomópontok száma - 1` élünk lesz. Pl 9 csomópont esetén 8 élünk kell legyen.

### Pszeudó kód
```pseudo
function find(int node){
	return (parent[node] == node) ? node : (parent[node] = find(parent[node]));
}

function unite(int x, int y){
	int s1 = find(x), s2 = find(y);
	if(s1 != s2){
		if(rank[s1] < rank[s2]) parent[s1] = s2;
		else if(rank[s1] > rank[s2]) parent[s2] = s1;
		else parent[s2] = s1, rank[s1]++;
		}
}

function kurskalMST(){
	sortedEdges = sort edges asc;
	int mstEdges [];
	for(node : nodes){
		parent[node] = node;
		rank[node] = 0
	}

	for(edge : sortedEdges){
		int rootFrom = find(edge.from);
		int rootTo = find(edge.to);

		if (rootFrom != rootTo){
			mstEdges.add(edge);
			union(rootFrom, rootTo);

			if (mstEdges.size() == V-1) break;
		}
	}
}
```