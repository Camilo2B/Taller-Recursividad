## Permutación de listas

defmodule PermutacionLista do

  def permutacion([]) do ##Caso Base
    [[]]
  end

  def permutacion(lista) do
    selecciona_y_permuta(lista, [])
  end


  def selecciona_y_permuta([], _before) do
    []
  end

  def selecciona_y_permuta([head | tail], before) do
    mantiene = before ++ tail
    head_perm = add_head_to_all(head, permutacion(mantiene))
    rest_perm = selecciona_y_permuta(tail, [head | before])
    head_perm ++ rest_perm
  end


  def add_head_to_all(_head, []) do
    []
  end

  def add_head_to_all(head, [perm | rest]) do
    [[head | perm] | add_head_to_all(head, rest)]
  end

  def main do
    lista_permutada = permutacion([1,2,3])
    Util.show_message("La permutacion de tu lista es #{inspect(lista_permutada)}")
  end
end

PermutacionLista.main()
