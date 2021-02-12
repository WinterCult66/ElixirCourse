defmodule TaskCourse do
  ########################### TASK 1 ########################################

  def sum_list_of_numbers([head | tail], result \\ 0) when is_number(head) do
    result = head + result
    result = sum_list_of_numbers(tail, result)
  end

  def sum_list_of_numbers([], concat_s), do: {:ok, "Suma de los Numeros:  #{concat_s}"}

  # def sum_v2(), do: {:error, "Msg=> Sum v_2 Not admit empty Values"}

  def sum_v2(num, _)
      when is_binary(num) or is_boolean(num) or is_float(num) or is_atom(num) or is_list(num) or
             is_map(num),
      do: {:error, "Msg=> Imposible Count this val=>>>  #{num}"}

  def sum_v2(num, result) when num == 0, do: {:ok, "Msg=> #{result}"}

  def sum_v2(num, result \\ 0) do
    sum_v2(num - 1, result + num)
  end

  ########################### TASK 2 ########################################

  def fib(n) when is_binary(n) or is_boolean(n) or is_float(n) or is_atom(n) do
    IO.puts("#{n} not is accepted, only permit numbers")
  end

  def fib(n) when n < 2, do: n

  def fib(n) do
    fib(n - 2) + fib(n - 1)
  end

  ########################### TASK 3 ########################################

  def some_function(a, b) when a == 0 or b == 0 do
    {:ok, "Fn => 0"}
  end

  def some_function(a, b) do
    # case a do
    #   ^b -> {:ok, "Fn => (a - 1, b - 1) + 2 * a - 1 "  }
    # a^==^b ->{:ok, "Fn =>  f(a - b, b) + f(b, b) "  }
    #   _ ->{:ok, "No options "  }
    # end
    cond do
      # some_function(a - 1, b - 1) + 2 * a - 1
      a == b -> {:ok, a - 1 + b - 1 + 2 * a - 1}
      a > b -> {:ok, a - b + b + b + b}
    end
  end

  ########################### TASK 4 ########################################

  def mcd(a, b) do
    cond do
      a == 0 or b == 0 -> {:ok, "Fn => 0"}
      b > a -> {:ok, a * b}
      true -> mcd(a - b, b)
    end
  end

  ############# extra ################
  def f(a, b) do
    cond do
      a == 0 or b == 0 -> 0
      a == b -> f(a - 1, b - 1) + 2 * a - 1
      a > b -> f(a - b, b) + f(b, b)
      a < b -> f(a, a) + f(b - a, a)
    end
  end
end
