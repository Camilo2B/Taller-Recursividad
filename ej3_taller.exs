## Suma de transacciones

defmodule SumaTransacciones do


  def sumar_con_acumulador(transacciones) do
    sumar_con_acumulador(transacciones, 0)
  end


  def sumar_con_acumulador([], acumulador), do: acumulador

  def sumar_con_acumulador([head | tail], acumulador) do
    sumar_con_acumulador(tail, acumulador + head)
  end

  def main do
    balance_final = sumar_con_acumulador([23000, -10000, 8000])
    Util.show_message("El balance final es de #{balance_final}")
  end
end

SumaTransacciones.main()
