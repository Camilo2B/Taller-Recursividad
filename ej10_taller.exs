#Punto 10 Seguimiento

defmodule Arbol_Binario do

  @moduledoc """
  Dado un árbol binario de enteros, devolver todas las rutas desde la raíz hasta hojas cuya
  suma de valores sea igual a un objetivo.
  """

  def encontrar_rutas_arbol(arbol, suma_objetivo) do
    buscar_ruta_recursiva(arbol, suma_objetivo, [], 0)
  end

  # Casos bases planteado para el ejercicio

  #Caso base #1: Se llega a un nodo vacio (nil)
  def buscar_ruta_recursiva(nil, _, _, _)do
    []
  end

  #Caso base #2: Se llega a una hoja final
  def buscar_ruta_recursiva({:nodo, valor, nil, nil}, suma_objetivo, ruta_actual, suma_actual) do
    suma_final = suma_actual + valor
    ruta_final = [valor | ruta_actual]

    if suma_final == suma_objetivo do
      [Enum.reverse(ruta_final)]
    else
      []
    end
  end

  #Caso recursivo: Se llega a un nodo intermedio
  def buscar_ruta_recursiva({:nodo, valor, hijo_izquierdo, hijo_derecho}, suma_objetivo, ruta_actual, suma_actual)do
    nueva_suma = suma_actual + valor
    nueva_ruta = [valor | ruta_actual]

    rutas_encontradas_izquierda = buscar_ruta_recursiva(hijo_izquierdo, suma_objetivo, nueva_ruta, nueva_suma)
    rutas_encontradas_derecha = buscar_ruta_recursiva(hijo_derecho, suma_objetivo, nueva_ruta, nueva_suma)

    rutas_encontradas_izquierda ++ rutas_encontradas_derecha
  end

  # Arbol binario propuesto para el enunciado
  def run do
    # Árbol de ejemplo corregido
    arbol = {:nodo, 10,
      {:nodo, 2, {:nodo, 8, nil, nil}, {:nodo, 4, nil, nil}},
      {:nodo, 6, {:nodo, 1, nil, nil}, {:nodo, 5, nil, nil}}
    }

    suma_objetivo = 17

    #LOS POSIBLES NUMERO A ENCONTRAR CON EL EJEMPLO DADO SON EL 20, 17, 17 Y 21

    IO.puts("Buscando rutas que sumen #{suma_objetivo}...")

    resultado = encontrar_rutas_arbol(arbol, suma_objetivo)

    IO.puts("Resultado encontrado:")
    IO.inspect(resultado)
  end
end

Arbol_Binario.run()
