
Önmagában nem inicializálható,  muszáj egy másik osztály alosztálya legyen

```
abstract class Shape   
{  
    int color;  
    // An abstract function  
    abstract void draw();  
}
```

```
abstract class Sunstar {
	abstract void printInfo();

}

// Abstraction performed using extends

class Employee extends Sunstar {
    void printInfo()

    {
        String name = "avinash";
        int age = 21;
		float salary = 222.2F;
		System.out.println(name);
        System.out.println(age);
        System.out.println(salary);
    }
}

// Base class

class Base {
    public static void main(String args[])
    {
        Sunstar s = new Employee();
        s.printInfo();
    }
}
```

1. Nem lehet példányt létrehozni egy absztrakt osztályból
2. Használhatóak a konstruktorok
3. Létrehozhatunk absztrakt osztályt absztrakt metódusok nélkül
4. Lehet `final` metódus az absztrakt osztályban, de nem lehet egyszerre `final` és `abstract`
5. Definiálhatunk `static` metódust


### Absztrakt osztály konstruktora
```
abstract class Shape{
	Shape(){
		....
	}
}
```