defmodule Cliente do
  def crear(nombre, deuda) do
    [
      {String.to_atom(nombre),
      %{nombre: String.capitalize(nombre), deuda: [deuda]}}
    ]
  end

  def aumentar_deuda(clientes, cliente, nueva_deuda) do
    update_in clientes[cliente].deuda, fn deuda -> [nueva_deuda] ++ deuda end
  end
end
