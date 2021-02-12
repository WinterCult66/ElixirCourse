defmodule Class do
  def loop(i, n, value) do
    cond do
      i < n ->
        IO.puts("#{value} - #{i}")
        loop(i + 1, n, value)

      true ->
        "End"
    end
  end

  def loop_v2(i, n, vlue) when i < n do
    IO.puts("#{vlue} - #{i}")
    loop_v2(i + 1, n, vlue)
  end

  def loop_v2(_, _, _), do: {:ok, "Finish"}
end
