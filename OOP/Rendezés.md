
### Array.sort() és Collections.sort()

ABC/növekvő sorrendben rendez. 
**Array.sort** - sima tömbök rendezésére
**Collections.sort** - listák rendezésére

### Comparable

Felülírhatjuk az osztály alapértelmezett rendezését.
Össze tudjuk hasonlítani az objektumot egy másik objektummal.
Egyszerűbb rendezéshez használjuk.
```
class Fruit implements Comparable<Fruit>{

	//Többi kód

	@Override public int compareTo(Fruit compareFruit) { 
		int compareQuantity = ((Fruit) compareFruit).getQuantity();
	 
		//ascending order 
		return this.quantity - compareQuantity; 
	
		//descending order 
		//return compareQuantity - this.quantity; 
	}

}
```


### Comparator

Egy külön osztály példányt hozunk létre amely elvégzi az összehasonlítást.
Komplexebb/sajátos rendezéshez használjuk.
```
public static Comparator<Fruit> FruitNameComparator = new Comparator<Fruit>() { 

@Override
public int compare(Fruit fruit1, Fruit fruit2) { 

		String fruitName1 = fruit1.getFruitName().toUpperCase(); 
		String fruitName2 = fruit2.getFruitName().toUpperCase(); 

		//ascending order 
		return fruitName1.compareTo(fruitName2); 

		//descending order 
		//return fruitName2.compareTo(fruitName1); 
	} 
};
```

Vagy **lamba kifejezéssel**
```
Collections.sort(list, (o1, o2) -> o1.compareTo( o2));


Collections.sort(list, new Comparator<Employee>() {
	public int compare(Employee e1, Employee e2) {

	return Double.compare(e1.getSalary(), e2.getSalary());
}

});
```