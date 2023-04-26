list = [1, 2, 3]
list = Enum.map(list, &(&1 * 2))
IO.inspect(list)
