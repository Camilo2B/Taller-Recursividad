#Ejercicio 4 Taller de recursividad

defmodule Buscador do

  @moduledoc """

  Buscar un elemento en una lista Crear una función recursiva que, dado un elemento y una lista, determine si el elemento está presente(true)o no(false)

  """

  def llamar_metodos do

    #Casos de elementos ya existentes
    elementos_existentes = ["Televisor", "Camara", "Telefono", "Iphone", "Tablet", "Smartwatch", "Computador"]
    Util.show_message("Ya hay productos existentes: #{inspect(elementos_existentes)}")

    #Pedir el elemento que se quiera mostrar en la lista
    elemento_buscar = pedir_elemento_buscar()
    Util.show_message("Buscando #{elemento_buscar} ...")

    #Funcion recursiva
    resultado = buscar(elemento_buscar, elementos_existentes)

    if resultado do
      Util.show_message("El elemento #{elemento_buscar} SI esta en la Lista")
    else
      Util.show_message("El elemento #{elemento_buscar} NO esta en la Lista")
    end
  end

  def pedir_elemento_buscar do
    Util.input("Cual es el elemento de la lista que desea buscar: ",:string)
  end

  #Función Recursiva
  def buscar(_elemento, []) do
    false
  end

  def buscar(elemento, [head | tail])do
    if elemento == head do
      true
    else
      buscar(elemento, tail)
    end
  end
end

Buscador.llamar_metodos()
