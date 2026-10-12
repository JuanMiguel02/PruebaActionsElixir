defmodule Report do
  def generate_summary(a, b) do
    sum = Math.add(a, b)
    product = Math.multiply(a, b)
    "Resultado -> Suma: #{sum}, Producto: #{product}"
  end
end
