defmodule Task do
  def fib(n) when is_binary(n) or is_boolean(n) or is_float(n) or is_atom(n) do
    IO.puts("#{n} not is accepted, only permit numbers")
  end

  def fib(n) when n < 2, do: n

  def fib(n) do
    fib(n - 2) + fib(n - 1)
  end
end
