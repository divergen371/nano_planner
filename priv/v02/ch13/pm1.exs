x = {:a, 3}
{:a, y, z} = Tuple.append(x, 4)
IO.inspect(x)
IO.inspect(y)
IO.inspect(z)
