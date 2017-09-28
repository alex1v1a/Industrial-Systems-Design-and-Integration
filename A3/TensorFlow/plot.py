import matplotlib.pyplot as plt

x = []
y = []

for i in range(0, 10, 1):
    x.append(i)
    y.append(i**2)

plt.plot(x, y)
plt.xlabel('x')
plt.ylabel('y')
plt.show()
