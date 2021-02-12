defmodule CursoElixir do
  @persons [%{name: "kevin", age: 25}, %{name: "alexander", age: 30}]
  def search([]), do: "no more"

  def search([%{name: name, age: age} | tail] \\ @persons) do
    IO.inspect(" #{name} --------> #{age}")
    search(tail)
  end
end
