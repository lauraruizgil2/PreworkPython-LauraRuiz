def suma (x, y):
  return x + y

def restar (x, y):
  return x - y

def multiplicar (x, y):
  return x * y

def dividir (x, y):
  if y !=0:
    return x/y
  else:
    return "error matemático"

def potencia (x,y):
  return x**y

def raiz_cuadrada(x):
  if x >= 0:
    return x ** 0.5
  else:
    return "eror matemático"

def calcuadora():
  print("¡Bienvenido a la Calculadora!")
  while True:
      eleccion = int(input("Selecciona una operación: Sumar(1) / Restar(2) / Multiplicar(3) / Dividir(4) / Elevar un numero a otro(5) / Raiz cuadrada(6) / Salir (7): "))
      if elección == 7:
        break
      
      elif eleccion in ["1","2","3","4","5"]:
        x = int(input("Introduce el primer numero: "))
        y = int(input("Introduce el primer numero: "))
        if eleccion == "1":
          result = sumar(x,y)
        if eleccion == "2":
          result = restar(x,y)
        if eleccion == "3":
          result = multiplicar(x,y)
        if eleccion == "4":
          result = dividir(x,y)
        if eleccion == "5":
          result = potencia(x,y)
      
      elif eleccion == "6":
        x = int(input("Introduce el numero sobre el que realizar la raiz cuadrada: "))
        result = raiz_cuadrada(x)

      else:
        print(f"{eleccion} no es una opcion valida")

      print(result)

if __name__ == "__main__":
      calculadora()
