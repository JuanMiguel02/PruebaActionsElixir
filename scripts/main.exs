Code.require_file("../lib/Math.ex", __DIR__)
Code.require_file("../lib/Report.ex", __DIR__)

defmodule Principal do
  def main do
    result_sum = Math.add(10, 20)
    IO.puts("Probando Math.add/2...\n")
    IO.puts("Resultado: #{result_sum}")

    unless result_sum = 30 do
      raise "Error de validación: Se esperaba 30 y se obtuvo #{result_sum}"
    end

    IO.puts("Probando Report.generate_summary/2")
    summary = Report.generate_summary(4, 5)
    IO.puts(summary)

    unless String.contains?(summary, "Suma: 9") do
      raise "Error de validación: El reporte no generó el formato esperado"
    end

    IO.puts("✓ Todas las verificaciones manuales se ejecutaron correctamente.")

  end
end
Principal.main()
