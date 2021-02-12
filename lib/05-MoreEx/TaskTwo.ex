defmodule TaskTwo do
  ################### EXERCISE 1 ####################################################

  def pyramid_binary(quantity, _, _) when quantity == 0, do: {:ok, "Exercise 1 End"}

  def pyramid_binary(quantity, result \\ 0, startNumber \\ 0)
      when is_number(quantity) and quantity >= 1 do
    tmpVal = quantity
    startNumber = loop_binary_number(tmpVal, startNumber, "")
    tmpVal = quantity - 1
    pyramid_binary(tmpVal, result, startNumber)
  end

  defp loop_binary_number(quantity, _, string_concat) when quantity == 0,
    do: IO.puts(string_concat)

  defp loop_binary_number(quantity, startNumber, string_concat) when quantity >= 1 do
    newVal =
      case 1 do
        ^startNumber -> 0
        _ -> 1
      end

    string_concat = "#{string_concat}  #{newVal}"
    loop_binary_number(quantity - 1, newVal, string_concat)
    newVal
  end

  ################### EXERCISE 2 ####################################################

  def sum_list_of_numbers([head | tail], result \\ 0) when is_number(head) do
    result = head + result
    sum_list_of_numbers(tail, result)
  end

  def sum_list_of_numbers([], concat_s), do: {:ok, "Exercise 2 End, quantity:  #{concat_s}"}

  ################### EXERCISE 3 ####################################################

  def reverse(list) when is_list(list) do
    reverse_list(list, [])
  end

  defp reverse_list([], reversed), do: {:ok, "Exercise 3 End, Reverse List: ", reversed}

  defp reverse_list([head | tail], reversed) do
    reverse_list(tail, [head | reversed])
  end

  ################### EXERCISE 4   ##################################################

  def ascendant([head | tail], isValid \\ true) do
    val = ascendant_eval?([head | tail], isValid)
    IO.puts(val)
  end

  defp ascendant_eval?([head | tail], result) when result do
    [h | t] = tail

    # IO.puts(head)
    # IO.puts(h)
    # IO.puts(h>head)

    if h > head do
      ascendant_eval?([h | t], result)
      true
    else
      false
    end
  end

  # defp ascendant_eval?([_|[]],_), do: "finish"
  defp ascendant_eval?([], _), do: "finish"
end
