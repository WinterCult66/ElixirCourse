defmodule Generic do
  @list [1, 2, 3, 4]

  @persons [%{name: "kevin"}, %{name: "alex"}]
  def generic([], sum, _function), do: sum

  def generic([head | tail] \\ @list, sum \\ 0, _function) do
    result = _function.(sum, head)
    generic(tail, result, _function)
  end

  def printPersons() do
    Enum.map(@persons, fn person -> IO.puts("Persona: #{person.name}") end)
  end

  def isPresentTheNumber([], number_to_search), do: "No encontrado #{number_to_search}"

  def isPresentTheNumber([head | tail], number_to_search, count) do
    if number_to_search == head do
      IO.puts("Numero #{number_to_search} encontrado veces #{count}")
    else
      count = count + 1
      isPresentTheNumber(tail, number_to_search, count)
    end
  end

  def concat_list_strings([head | tail], concat \\ "") do
    if is_binary(head) do
      # "#{head} #{concat}"
      concat = concat <> head
      concat_list_strings(tail, concat)
    end
  end

  # def concat_list_strings([head| _tail],_concat) when is_number(head) do
  #    {:Error, "No puede contener numbers"}
  # end

  def concat_list_strings([], concat_s), do: {:ok, "Recorrido Finish=>>>>>>  #{concat_s}"}

  def ff(1, result), do: Enum.reverse(result)
end
