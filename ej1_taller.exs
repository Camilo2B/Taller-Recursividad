## Factorial con control de errores

defmodule Factorial do

  def factorial_control(0) do
    1
  end #Caso base

 # Caso de error: números negativos
  def factorial_control(n) when n < 0 do
    "Error: No se puede calcular el factorial de un número negativo"
  end

  # Caso recursivo: n! = n * (n-1)!
  def factorial_control(n) when n > 0 do
    n * factorial_control(n - 1)
  end

  def main do
    resultado = factorial_control(5)
    Util.show_message("El factorial es igual a #{resultado}")
  end

end

Factorial.main()
