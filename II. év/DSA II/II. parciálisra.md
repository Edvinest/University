### DFS
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


### BFS
```cpp
#include <iostream>
#include <vector>
#include <queue>
using namespace std;

vector<int> bfsIterative(const vector<vector<int>>& graph, int startNode) {
    int n = graph.size();
    vector<bool> visited(n, false);
    vector<int> parent(n, -1);  // -1 means no parent
    vector<int> traversal;
    queue<int> q;

    q.push(startNode);
    visited[startNode] = true;

    while (!q.empty()) {
        int node = q.front();
        q.pop();
        traversal.push_back(node);

        for (int neighbor : graph[node]) {
            if (!visited[neighbor]) {
                visited[neighbor] = true;
                parent[neighbor] = node;  // Set parent
                q.push(neighbor);
            }
        }
    }

    // Print BFS traversal order
    cout << "BFS Traversal: ";
    for (int node : traversal) cout << node << " ";
    cout << endl;

    // Print parent pointers (BFS tree)
    cout << "Parent pointers:\n";
    for (int i = 0; i < n; i++) 
        cout << "Node " << i << "'s parent: " << parent[i] << endl;

    return traversal;
}

int main() {
    // Same graph as DFS example
    vector<vector<int>> graph = {
        {1, 2},    // Node 0
        {0, 3, 4},  // Node 1
        {0, 5},     // Node 2
        {1},        // Node 3
        {1},        // Node 4
        {2}         // Node 5
    };

    bfsIterative(graph, 0);  // Start BFS from node 0
    return 0;
}
```