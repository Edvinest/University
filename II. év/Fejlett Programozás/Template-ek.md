Ameddig az adott művelet lefuttatható több fajta adattípussal, addig érdemes használni.

## Function template

Pl:
```CPP
template<typename T>
const T max(const T& x, const T& y){
	return x < y ? y : x;
}
```

Csak specifikus esetekben számít, hogy `class T` vagy `typename T`.  

## Class template
**Type template parameter**
```CPP
template<typename T>
class Array{
	T* elements;
	int size;
public:
	...
}
```

**Non-type template parameter**
```CPP
template<typename T, int MAX = 100>
class Stack{
	T elements[MAX];
public:
	...
}
```

**Haladó template**
```CPP
template<typename T, typename Container>
class Stack{
	Container elements;
public:
	void push(const T& e){
		elements.push_back(e);	
	}
	...
}
```

**Felhasználás**
```CPP
Stack<int, vector<int>> v1;
Stack<int, deque<int>> v2;
```