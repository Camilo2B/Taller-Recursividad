#Punto 8 del seguimiento

defmodule Tienda do

  @moduledoc """
  Una tienda almacena sus pedidos en una lista de mapas con claves :producto y
  :cantidad. Implementar una función recursiva que calcule la cantidad total de productos
  pedidos
  """

  def llamar_metodos do

    #Casos de productos ya añadidos
    productos_enlistados = [%{productos: "Arroz X 500 lb", cantidad: 15}, %{productos: "Leche X 1.5 litros", cantidad: 10}]
    Util.show_message("Productos ya enlistados")
    IO.inspect(productos_enlistados)


    #Pedir datos
    producto = pedir_producto_llevar()
    cantidad = pedir_cantidad_producto_llevar()

    #Crear Lista nueva con productos actualizados
    producto_nuevo_lista = %{productos: producto, cantidad: cantidad}

    #Añadir el producto a la nueva lista
    lista_actualizada = [producto_nuevo_lista | productos_enlistados]

    Util.show_message("Lista de productos se ha actualizado")
    IO.inspect(lista_actualizada)

    total_productos = calcular_cantidad_productos_pedidos(lista_actualizada)

    Util.show_message("Ahora la lista de productos es: #{total_productos}")
  end

  def pedir_producto_llevar do
    Util.input("Ingrese el producto a llevar: ",:string)
    |> String.trim
  end

  def pedir_cantidad_producto_llevar do
    entrada = Util.input("Ingrese la cantidad del producto elegido que desea llevar: ",:string)
    case Integer.parse(entrada) do
      {num, ""} ->
        num
      _->
      Util.show_message("Entrada invalida, no se agregaron productos")
      0
    end
  end

  def calcular_cantidad_productos_pedidos([]) do
    0
  end

  def calcular_cantidad_productos_pedidos([%{cantidad: cantidad} | resto_cola]) do
    cantidad + calcular_cantidad_productos_pedidos(resto_cola)
  end

end


Tienda.llamar_metodos()
