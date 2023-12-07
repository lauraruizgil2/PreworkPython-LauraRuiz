"""Condicionales
1. Ejercicio: Dado un número, imprime si es positivo o negativo.
2. Ejercicio: Dado un número, imprime si es par o impar.
3. Ejercicio: Dado tres números, encuentra y muestra el mayor de ellos."""
numero = 10
if numero < 20 :
  print("positivo")
else:
  print("negativo")

numero = 5
if numero % 2 == 0:
  print("Par")
else:
  print("Impar")

a, b, c = 2, 3, 4
mayor = max(2, 3, 4)
print(mayor)