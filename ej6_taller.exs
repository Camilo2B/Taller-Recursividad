defmodule PotenciaNumero do

  def potencia(base, exponente) do
    calcular_potencia(base, exponente)
  end

  def calcular_potencia(_base, 0) do
    1
  end

  def calcular_potencia(base, exponente) when exponente > 0 do
    base * calcular_potencia(base, exponente - 1)
  end

  def calcular_potencia(base, exponente) when exponente < 0 do
    1 / calcular_potencia(base, -exponente)
  end

  def main do
    resultado = potencia(2, 3)
    Util.show_message("la potencia del numero y su base es #{resultado}")
  end
end

PotenciaNumero.main()
