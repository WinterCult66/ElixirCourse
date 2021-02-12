defmodule SumList do
  @listNomina [52.8000, 41.255, 96.633]

  def sumList([first | tail] \\ @listNomina, suma \\ 0) do
    result = suma + first
    sumList(tail, result)
    IO.inspect(" #{result}")
  end

  def sumList([], suma), do: suma
end
