
### Array.sort() és Collections.sort()

ABC/növekvő sorrendben rendez. 
**Array.sort** - sima tömbök rendezésére
**Collections.sort** - listák rendezésére

### compareTo()
```
public int compareTo(Fruit compareFruit) { 
	int compareQuantity = ((Fruit) compareFruit).getQuantity();
	 
	//ascending order 
	return this.quantity - compareQuantity; 
	
	//descending order 
	//return compareQuantity - this.quantity; 
}
```


### Comparator

```
public static Comparator<Fruit> FruitNameComparator = new Comparator<Fruit>() { 

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