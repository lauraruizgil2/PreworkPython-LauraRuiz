"""Bucles
1. Ejercicio: Imprime los números del 1 al 10 usando un bucle for .
2. Ejercicio: Imprime los números pares del 1 al 20 usando un bucle while . 
3. Ejercicio: Usa un bucle para calcular la suma de los números del 1 al 100."""
for i in range(1, 11): 
  print(i)

i = 1
while i <= 20:
  if i % 2 == 0:
    print(i)
  i += 1

suma = 0
for i in range(1, 101):
  suma += i
print(suma)