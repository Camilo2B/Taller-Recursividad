defmodule Reserva do

  @moduledoc """
  Un hotel guarda las reservas en una lista de mapas con claves :cliente y :dias.
  Implementar una función recursiva que calcule el total de días reservados
  """

  def llamar_metodos do


    #Reservas existentes
    reservas_existentes = [%{cliente: "Erwin", dias: 10},%{cliente: "Daniela", dias: 10}]
    Funcional.mostrar_mensaje("--- Reservas existentes ---")
    IO.inspect(reservas_existentes)

    #Pedir datos
    nombre = pedir_nombre()
    dias = pedir_dias_estadia()

    # 3. Crear el mapa
    nueva_reserva = %{cliente: nombre, dias: dias}

    # 4. Añadir la reserva a la lista
    lista_actualizada = [nueva_reserva | reservas_existentes] #HEAD-TAIL

    Funcional.mostrar_mensaje("\n--- Lista actualizada ---")
    IO.inspect(lista_actualizada)

    # 5. Llamado a la función recursiva con la LISTA COMPLETA
    total_dias = sumar_dias_reservados(lista_actualizada)

    Funcional.mostrar_mensaje("\nEl total de días reservados ahora es: #{total_dias}")
  end

  def pedir_nombre do
    Funcional.input("Ingrese su nombre para la reserva: " ,:string)
    |> String.trim()
  end

  def pedir_dias_estadia do
    # Completamos esta función para que pida los días
    case Funcional.input("Ingrese los días que desea quedarse: " ,:string)
    |> String.trim()
    |> Integer.parse() do
      {num, ""} -> num
      _ ->
        Funcional.mostrar_mensaje("Entrada inválida. Se asignarán 0 días.")
        0
    end
  end

  # TU FUNCIÓN RECURSIVA ORIGINAL (NO SE MODIFICA)
  def sumar_dias_reservados([]) do #CASO BASE
    0
  end

  def sumar_dias_reservados([%{dias: dias} | cola_reserva]) do
    dias + sumar_dias_reservados(cola_reserva)
  end

end

Reserva.llamar_metodos()
