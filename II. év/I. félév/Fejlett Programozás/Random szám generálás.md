```cpp
#include <random>

std::random_device rd;
std::mt19937 gen(rd());
std::uniform_int_distribution<int> dist(lower_bound,upper_bound);

int myInt = dist(gen);
```