import matplotlib.pyplot as plt

shoeSize = [45, 39, 39, 42, 42, 44, 40, 36, 41]

plt.boxplot(shoeSize)
plt.yticks(range(min(shoeSize), max(shoeSize) + 1))
plt.show()
