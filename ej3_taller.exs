## Suma de transacciones

defmodule SumaTransacciones do

  def suma_transacciones([]) do ## Caso base
  [[]]
  end

  def suma_transacciones(lista) do

  end









  def main do
    balance_final = suma_transacciones([23000, -10000, 8000])
    Util.show_message("El balance final es de #{balance_final}")
  end
end
