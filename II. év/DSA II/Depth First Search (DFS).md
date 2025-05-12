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
	res
	dfsRecursion(adj, isVisited, 0, res)
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
#include <bits/stdc++.h>
using namespace std;

// Recursive function for DFS traversal
void dfsRec(vector<vector<int>> &adj, vector<bool> &visited, int s, vector<int> &res)
{

    visited[s] = true;

    res.push_back(s);

    // Recursively visit all adjacent vertices
    // that are not visited yet
    for (int i : adj[s])
        if (visited[i] == false)
            dfsRec(adj, visited, i, res);
}

// Main DFS function that initializes the visited array
// and call DFSRec
vector<int> DFS(vector<vector<int>> &adj)
{
    vector<bool> visited(adj.size(), false);
    vector<int> res;
    dfsRec(adj, visited, 0, res);
    return res;
}

// To add an edge in an undirected graph
void addEdge(vector<vector<int>> &adj, int s, int t)
{
    adj[s].push_back(t);
    adj[t].push_back(s);
}

int main()
{
    int V = 5;
    vector<vector<int>> adj(V);

    // Add edges
    vector<vector<int>> edges = {{1, 2}, {1, 0}, {2, 0}, {2, 3}, {2, 4}};
    for (auto &e : edges)
        addEdge(adj, e[0], e[1]);

    // Starting vertex for DFS
    vector<int> res = DFS(adj); // Perform DFS starting from the source verte 0;

    for (int i = 0; i < V; i++)
        cout << res[i] << " ";
}


```