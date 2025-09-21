defmodule EjerciciosRecursividad do
  def contar([]), do: 0 # Caso Base
  def contar([_n | resto]), do: 1 + contar(resto)



  def sumar_pares([]), do: 0 # Caso Base
  def sumar_pares([n | resto]) do
    if rem(n, 2) == 0 do
      n + sumar_pares(resto)
    else
      sumar_pares(resto)
    end
  end




  def suma_lista([]), do: 0 # Caso Base
  def suma_lista([n | resto]), do: n + suma_lista(resto)
  
  def suma_matriz([]), do: 0 # Caso Base
  def suma_matriz([fila | resto]), do: suma_lista(fila) + suma_matriz(resto)

  def main do
    IO.puts("contar: #{contar([:a, :b, :c, :d])}")
    IO.puts("sumar_pares: #{sumar_pares([1, 2, 3, 4, 5, 6])}")
    IO.puts("suma_matriz: #{suma_matriz([[1, 2, 3], [4, 5], [6]])}")
  end
end

EjerciciosRecursividad.main()
