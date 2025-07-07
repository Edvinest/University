```python
def HurModszer(a, b, f, k_max, tol=1e-10):
	x = b
	s = a

	for k in range(1, k_max):

		if (f(x) == f(s)):
			print("Division by zero")
			break

		x_new = x - (x - s / (f(x) - f(s)))*f(x)
		if(f(x_new) == 0): break
		if abs(f(x_new)) < tol:
			return x_new 

		if f(x_new) * f(x) < 0:
		s = x
  
		x = x_new

	return x
```