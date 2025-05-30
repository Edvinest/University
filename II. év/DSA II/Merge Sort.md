Működése:
- **Divide (Oszd meg):** rekurzívan addig osztjuk ketté a listát vagy tömböt ameddig nem tudunk tovább osztani.
- **Conquer (Uralkodj):** rendezzük az altömböket (subarray) a merge sort algoritmussal
- **Merge:** a rendezett altömböket újra egyesítjük, a folyamat addig ismétlődik ameddig az összes altömb nem lett egyesítve

```pseudo
function merge(array[], left, mid, right){
	n1 = mid - left + 1 // első fele
	n2 = right - mid // második fele

	leftArray[n1]
	rightArray[n2]

	for(i = 0; i < n1; i++){
		leftArray[i] = array[left + i]
	}

	for(j = 0; j < n2; j++){
		rightArray[j] = array[mid + 1 + j]
	}

	i = 0, j = 0
	k = left

	while(i < n1 && j < n2){
		if (leftArray[i] <= rightArray){
			array[k] = leftArray[i]
			i++
		}
		else{
			array[k] = rightArray[j]
			j++
		}
		k++
	}

	while(i < n1){
		array[k] = leftArray[i]
		i++
		k++
	}

	while(j < n2){
		array[k] = rightArray[j]
		j++
		k++
	}
}

function sort(array[], left, right){

}
```

```cpp
#include <bits/stdc++.h>
using namespace std;

// Merges two subarrays of arr[].
// First subarray is arr[left..mid]
// Second subarray is arr[mid+1..right]
void merge(vector<int>& arr, int left, 
                     int mid, int right)
{
    int n1 = mid - left + 1;
    int n2 = right - mid;

    // Create temp vectors
    vector<int> L(n1), R(n2);

    // Copy data to temp vectors L[] and R[]
    for (int i = 0; i < n1; i++)
        L[i] = arr[left + i];
    for (int j = 0; j < n2; j++)
        R[j] = arr[mid + 1 + j];

    int i = 0, j = 0;
    int k = left;

    // Merge the temp vectors back 
    // into arr[left..right]
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        }
        else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    // Copy the remaining elements of L[], 
    // if there are any
    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }

    // Copy the remaining elements of R[], 
    // if there are any
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
}

// begin is for left index and end is right index
// of the sub-array of arr to be sorted
void mergeSort(vector<int>& arr, int left, int right)
{
    if (left >= right)
        return;

    int mid = left + (right - left) / 2;
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);
    merge(arr, left, mid, right);
}

// Function to print a vector
void printVector(vector<int>& arr)
{
    for (int i = 0; i < arr.size(); i++)
        cout << arr[i] << " ";
    cout << endl;
}

// Driver code
int main()
{
    vector<int> arr = { 12, 11, 13, 5, 6, 7 };
    int n = arr.size();

    cout << "Given vector is \n";
    printVector(arr);

    mergeSort(arr, 0, n - 1);

    cout << "\nSorted vector is \n";
    printVector(arr);
    return 0;
}

```