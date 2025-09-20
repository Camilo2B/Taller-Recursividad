## Buscar elemento de una lista

defmodule BuscarElemento do


  def busqueda(_elem, []) do ##Caso base
    [[]]
  end





  def main do
    velda = busqueda("mango", [])
    Util.show_message("¿su elemento esta en la lista? #{velda}")
  end


end
