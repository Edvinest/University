A sorban következő elemen megyünk végig. Tehát ahogy az élek követik egymást a bemenetnél/szomszédsági listában. Ha rendezed a szomszédsági listát akkor nyilván nem feltétlenül igaz.
```cpp
vector<int> BFS(vector<CSPOINT> &mPoints, int startingPoint) {  
    // Initialize all nodes (reset color, father, and distance)
    for (int i = 0; i < mPoints.size(); i++) {  
        mPoints.at(i).color = 0;      // 0 = unvisited (white)
        mPoints.at(i).father = 0;     // No parent initially
        mPoints.at(i).distance = INT_MAX;  // Infinite distance (not yet discovered)
    }  

    vector<int> bfs;  // Stores the BFS traversal order (result)
    startingPoint -= 1;  // Convert to 0-based index (assuming input is 1-based)

    // Mark the starting node as visited (gray), distance = 0
    mPoints.at(startingPoint).color = 1;      // 1 = discovered (gray)
    mPoints.at(startingPoint).distance = 0;   // Distance from itself is 0

    queue<int> mQueue;  // Queue for BFS traversal
    cout << "BFS: ";  
    mQueue.push(startingPoint);  // Start with the initial node

    while (!mQueue.empty()) {  
        int u = mQueue.front();  // Get the next node to process
        bfs.push_back(u + 1);    // Record traversal (convert back to 1-based for output)
        
        // Explore all neighbors of the current node 'u'
        for (int i = 0; i < mPoints.at(u).neighbors.size(); i++) {  
            int neighbor = mPoints.at(u).neighbors.at(i) - 1;  // Convert neighbor to 0-based index
            
            // If the neighbor is unvisited (color == 0)
            if (mPoints.at(neighbor).color == 0) {  
                mPoints.at(neighbor).color = 1;  // Mark as discovered (gray)
                mPoints.at(neighbor).distance = mPoints.at(u).distance + 1;  // Update distance
                mPoints.at(neighbor).father = u + 1;  // Set parent (convert back to 1-based)
                mQueue.push(neighbor);  // Add to queue for later processing
            }  
        }  

        mQueue.pop();  // Remove 'u' from the queue (fully processed)
        mPoints.at(u).color = 2;  // Mark as fully processed (black)
    }  

    return bfs;  // Return the BFS traversal order
}
```