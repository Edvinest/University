### DFS
```cpp
#include <iostream>
#include <vector>
using namespace std;

void dfsRecursive(int node, const vector<vector<int>>& graph, 
                 vector<bool>& visited, vector<int>& parent, 
                 vector<int>& traversal) {
    visited[node] = true;
    traversal.push_back(node);

    for (int neighbor : graph[node]) {
        if (!visited[neighbor]) {
            parent[neighbor] = node;  // Set parent
            dfsRecursive(neighbor, graph, visited, parent, traversal);
        }
    }
}

int main() {
    // Example adjacency list (undirected graph)
    vector<vector<int>> graph = {
        {1, 2},    // Node 0 is connected to 1 and 2
        {0, 3, 4},  // Node 1
        {0, 5},     // Node 2
        {1},        // Node 3
        {1},        // Node 4
        {2}         // Node 5
    };

    int startNode = 0;
    int n = graph.size();
    vector<bool> visited(n, false);
    vector<int> parent(n, -1);  // -1 means no parent
    vector<int> traversal;

    dfsRecursive(startNode, graph, visited, parent, traversal);

    // Print DFS traversal order
    cout << "DFS Traversal: ";
    for (int node : traversal) cout << node << " ";
    cout << endl;

    // Print parent pointers (DFS tree)
    cout << "Parent pointers:\n";
    for (int i = 0; i < n; i++) 
        cout << "Node " << i << "'s parent: " << parent[i] << endl;

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