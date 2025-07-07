Ahelyett, hogy megállna a program amikor hibával találkozik, kiírja a hibát és teljesen lefut.

**try** - lefuttatja a kódot
**catch** - ha hibát talál kiírja
**finally** - miután végigfutott a kód, elvégzi az ott megadott utasítást (mindig a try-catch után kell elhelyezni)
```
public class AddArguments {
	public static void main(String[] args) {
	int sum = 0;

	for( String arg: args ){
		try{

		sum += Integer.parseInt( arg );

		} catch( NumberFormatException e ){
			System.err.println(arg + " is not an integer");
		}
	}

	System.out.println( "Sum: " + sum );
	}
}
```

Példa: `1 2 foo 3`
Output: 
```
foo is not an integer 
Sum: 6
```

### `Throw` és `Throws`

`Throws` - akkor használatos ha egy metódus vagy függvény egy vagy több hibát téríthet vissza
`Throw` - visszadob egy hibát

```
public void push(Object o) throws StackException {
	if (size == capacity) {
		throw new StackException("Stack is full");
}

	elements[size++] = o;
}
```