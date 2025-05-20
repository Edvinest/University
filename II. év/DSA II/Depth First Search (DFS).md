Működése:
- Bináris fához hasonlóan végigmegyünk a vertex-eken, balról jobbra
- Mivel a fákban egy node többször is látogatható itt `látogatottnak` jelöljük a vertex-et
- Kiírjuk az utolsó vertex-et, majd visszamegyünk a kiinduló pontba

```pseudo
adj - szomszédsági lista
function dfsRecursion(adj[][], isVisited[], vertex, &result){
	isVisited[vertex] = true

	result.push_back(vertex)

	for(i : adj[vertex]){
		if (isVisited[i] == false){
			dfsRecursion(adj[][], isVisited, i, result);
		}
	}
}

function DFS(adj[][]){
	isValid(adj.size(), false)
	res[]
	dfsRecursion(adj, isVisited, 0, res)

	return res
}

function addEdge(adj[][], startVertex, targetVertex){
	adj[startVertex].push_back(targetVertex)
	adj[targetVertex].push_back(startVertex)
}
```

### Non-Recursive
```cpp
vector<int> DFS(vector<CSPOINT> &mPoints, int startingPoint) {
    // Initialize all nodes (reset color, father, and distance)
    for (int i = 0; i < mPoints.size(); i++) {
        mPoints.at(i).color = 0;      // 0 = unvisited (white)
        mPoints.at(i).father = 0;     // No parent initially
        mPoints.at(i).distance = INT_MAX;  // Infinite distance (not yet discovered)
    }

    vector<int> dfs;  // Stores the DFS traversal order (result)
    startingPoint -= 1;  // Convert to 0-based index (assuming input is 1-based)

    stack<int> mStack;  // Stack for DFS traversal
    mStack.push(startingPoint);  // Start with the initial node

    cout << "DFS: ";

    while (!mStack.empty()) {
        int u = mStack.top();  // Get the top node
        mStack.pop();  // Remove it from the stack

        // If the node is unvisited, process it
        if (mPoints.at(u).color == 0) {
            mPoints.at(u).color = 1;  // Mark as discovered (gray)
            dfs.push_back(u + 1);     // Record traversal (1-based output)
            mPoints.at(u).distance = (mPoints.at(u).father == 0) ? 0 : mPoints.at(mPoints.at(u).father - 1).distance + 1;

            // Push neighbors in reverse order to visit them left-to-right (like recursive DFS)
            for (int i = mPoints.at(u).neighbors.size() - 1; i >= 0; i--) {
                int neighbor = mPoints.at(u).neighbors.at(i) - 1;  // Convert to 0-based
                if (mPoints.at(neighbor).color == 0) {
                    mPoints.at(neighbor).father = u + 1;  // Set parent (1-based)
                    mStack.push(neighbor);  // Add to stack for processing
                }
            }
        }
    }

    return dfs;  // Return the DFS traversal order
}
```

### Recursive
```cpp
#include <iostream>
#include <vector>
using namespace std;

enum Color { WHITE, GRAY, BLACK };

void dfs_visit(int u, const vector<vector<int>>& adj, 
              vector<Color>& color, vector<int>& parent, 
              vector<int>& distance, vector<int>& traversal, int current_depth) {
    color[u] = GRAY;  // Discovered
    distance[u] = current_depth;  // Set distance from start
    traversal.push_back(u);
    
    for (int v : adj[u]) {
        if (color[v] == WHITE) {
            parent[v] = u;
            dfs_visit(v, adj, color, parent, distance, traversal, current_depth + 1);
        }
    }
    
    color[u] = BLACK;  // Finished
}

vector<int> dfs(const vector<vector<int>>& adj, int start) {
    int n = adj.size();
    vector<Color> color(n, WHITE);
    vector<int> parent(n, -1);
    vector<int> distance(n, -1);  // Initialize distances to -1 (unreachable)
    vector<int> traversal;
    
    dfs_visit(start, adj, color, parent, distance, traversal, 0);  // Start with depth 0
    
    // Print parent pointers and distances
    cout << "Vertex\tParent\tDistance\n";
    for (int i = 0; i < n; i++) {
        cout << i << "\t" << parent[i] << "\t" << distance[i] << endl;
    }
    
    return traversal;
}

int main() {
    // Example adjacency list (directed graph)
    vector<vector<int>> adj = {
        {1, 2},    // 0's neighbors
        {3},        // 1's neighbors
        {1, 3},     // 2's neighbors
        {4},        // 3's neighbors
        {}          // 4's neighbors
    };
    
    vector<int> traversal = dfs(adj, 0);
    
    cout << "DFS order: ";
    for (int v : traversal) cout << v << " ";
    
    return 0;
}
```