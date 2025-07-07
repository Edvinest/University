Működése:
- Két félbe osztjuk a listát vagy tömböt
- Megnézzük, hogy a keresett érték a közepén található-e:
	- Ha igen, vége a folyamatnak
	- Ha nem:
		- Ha az érték kisebb, mint a középen található érték, akkor a bal oldalon keressük
		- Ha az érték nagyobb, mint a középen található érték, akkor a jobb oldalon keressük
- Addig folyatjuk a keresést ameddig meg nem találtuk a kulcsot
```pseudo
function binarySearch(array[], low, high, searchedNum)
{
	while(low <= high){
		mid = low + (high - low) / 2

		if(array[mid] == searchedNum){
			return mid
		}

		if(array[mid] < searchedNum){
			return binarySearch(array, mid + 1, high, searchedNum)
		}

		else
			return binarySearch(arr, low, mid - 1, x)
	}

	return -1
}
```

```cpp
// C++ program to implement iterative Binary Search
#include <bits/stdc++.h>
using namespace std;

// An iterative binary search function.
int binarySearchRecursive(int arr[], int low, int high, int x) {
    if (low > high)
        return -1;

    int mid = low + (high - low) / 2;

    if (arr[mid] == x)
        return mid;

    if (arr[mid] < x)
        return binarySearchRecursive(arr, mid + 1, high, x);
    else
        return binarySearchRecursive(arr, low, mid - 1, x);
}

// Driver code
int main(void)
{
    int arr[] = { 2, 3, 4, 10, 40 };
    int x = 10;
    int n = sizeof(arr) / sizeof(arr[0]);
    int result = binarySearchRecursive(arr, 0, n - 1, x);
    if(result == -1) cout << "Element is not present in array";
    else cout << "Element is present at index " << result;
    return 0;
}

```