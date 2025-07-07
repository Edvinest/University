I.
```cpp
#include <iostream>
using namespace std;

bool isPrimeDigit(int d) {
    return d == 2 || d == 3 || d == 5 || d == 7;
}

int extractPrimeDigits(int n) {
    if (n == 0) return 0;

    int partial = extractPrimeDigits(n / 10);
    int last = n % 10;

    if (isPrimeDigit(last))
        return partial * 10 + last;
    else
        return partial;
}

int main() {
    int number;
    cout << "Enter a number: ";
    cin >> number;

    int result = extractPrimeDigits(number);
    if (result == 0) cout << "No prime digits found." << endl;
    else cout << "New number: " << result << endl;

    return 0;
}

```

II.
```cpp
#include <iostream>
#include <vector>
using namespace std;

const int WORD_LEN = 2;
char letters[] = {'w', 'x', 'y', 'z'};

bool isValid(string word) {
    if (word.empty()) return true;

    // Rule 1: Cannot start with 'x'
    if (word.length() == 1 && word[0] == 'x') return false;

    // Rule 2: w and z cannot be adjacent
    int len = word.length();
    if (len >= 2) {
        char last = word[len - 1];
        char secondLast = word[len - 2];
        if ((last == 'w' && secondLast == 'z') || (last == 'z' && secondLast == 'w'))
            return false;
    }

    return true;
}

void generate(string word) {
    if (word.length() == WORD_LEN) {
        cout << word << endl;
        return;
    }

    for (char c : letters) {
        string next = word + c;
        if (isValid(next)) {
            generate(next);
        }
    }
}

int main() {
    generate("");
    return 0;
}

```

III.
```cpp
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Bottle {
    double weight;
    double price;
    double ratio;
};

bool compare(Bottle a, Bottle b) {
    return a.ratio > b.ratio;
}

int main() {
    int n;
    cout << "Number of bottles: ";
    cin >> n;

    vector<Bottle> bottles(n);
    for (int i = 0; i < n; ++i) {
        cout << "Enter weight and price for bottle " << i+1 << ": ";
        cin >> bottles[i].weight >> bottles[i].price;
        bottles[i].ratio = bottles[i].price / bottles[i].weight;
    }

    double capacity;
    cout << "Shelf capacity (kg): ";
    cin >> capacity;

    sort(bottles.begin(), bottles.end(), compare);

    double totalValue = 0;
    double used = 0;

    cout << "\nSelected bottles:\n";
    for (int i = 0; i < n && used < capacity; ++i) {
        double canTake = min(capacity - used, bottles[i].weight);
        totalValue += canTake * bottles[i].ratio;
        used += canTake;
        cout << "  Took " << canTake << "kg of bottle " << i+1 << endl;
    }

    cout << "\nTotal value: " << totalValue << endl;
    return 0;
}

```