
```
public interface Animal {
	void eat();
	void sleep();
	void makeSound();
}
```

### Használata
```
public class Dog implements Animal {

	public void eat() {
	System.out.println("Dog is eating");
	}

	public void sleep() {
	System.out.println("Dog is sleeping");
	}

	public void makeSound() {
	System.out.println("Vau vau");
	}

	@Override
	public String toString() {
	return "Dog";
	}
}
```

### Main-ben
```
public static void main(String args[]) {

	AnimalKingdom kingdom = new AnimalKingdom();
	kingdom.addAnimal(new Dog());
	kingdom.addAnimal(new Cat());
	kingdom.addAnimal(new Bird());
	kingdom.addAnimal(new Cat());
	kingdom.addAnimal(new Bird());
	kingdom.addAnimal(new Fish());

	kingdom.listAnimals();
	kingdom.makeNoise();

	System.out.println("#species: " + kingdom.numSpecies());
}
```
