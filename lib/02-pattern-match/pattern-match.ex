map1 = {a, b, c} = {"1", "2", "3"}
IO.inspect(map1)

IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

list = [a, b | tail] = [666, 2, 3, 4, 5, 6, 7]
IO.inspect(map1)

IO.inspect(a)
IO.inspect(b)
IO.inspect(c)
IO.inspect(a)
IO.inspect(tail)

# [{name:a|tail}] = persons = [%{name: "kevin"},%{name: "alexander"},%{name: "rodriguez"}]

IO.inspect(a)
