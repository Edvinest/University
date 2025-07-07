```cpp
typedef struct {  
    int colors = 0;  
    int father = 0;  
    int distance = INT_MAX;  
    vector<int> neighbors;  
} POINT;

vector<POINT> readFromFile(char filename[20]) {  
    ifstream fin(filename);  
    int nrPoints;  
    int nrEdges;  
    fin >> nrPoints >> nrEdges;  
  
    vector<POINT> mPoints(nrPoints);  
  
    for (int i = 0; i < nrEdges; ++i) {  
        int from, to;  
        fin >> from >> to;  
        mPoints.at(from - 1).neighbors.push_back(to);  
        mPoints.at(to - 1).neighbors.push_back(from);  
    }  
    return mPoints;  
}  
  
void printVector(vector<POINT> mPoints) {  
    for (int i = 0; i < mPoints.size(); ++i) {  
        cout << "Index: " << i + 1 << "\n";  
        cout << "Color: " << mPoints.at(i).colors << "\n";  
        cout << "Father: " << mPoints.at(i).father << "\n";  
        cout << "Neighbours: ";  
        for (int j = 0; j < mPoints.at(i).neighbors.size(); ++j) {  
            cout << mPoints.at(i).neighbors.at(j) << " ";  
        }  
        cout << "\n\n";  
    }  
}  
  
void printVectorInt(vector<int> vector) {  
    for (int i = 0; i < vector.size(); ++i) {  
        cout << vector.at(i) << " ";  
    }  
    cout << "\n";  
}
```