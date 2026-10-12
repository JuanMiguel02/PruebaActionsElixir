defmodule Math do
  def add(a, b), do: a + b
  def multiply(a, b), do: a * b
  def rest(a, b), do: a - b
  def divide(a, b) when b == 0, do: {:error, :division_entre_cero}
  def divide(a, b), do: a / b
end
