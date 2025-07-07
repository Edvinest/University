Sima konstruktor
```cpp
Example::Example(int myInt){
this->myInt = myInt;
}
```

Egyszerű konstruktor
```cpp
Example::Example(int myInt): myInt(myInt){}
```

Copy konstruktor
```cpp
Example::Example(const Example& ex){
this->myInt = ex.myInt;
}
```

Move konstruktor
```cpp
Example::Example(Example &&ex){
this->myInt = ex.myInt;
ex.myInt = 0;
}
```

Destruktor
```cpp
Example::~Example(){
this->myInt = 0;
//vagy
delete this->myInt;
}
```