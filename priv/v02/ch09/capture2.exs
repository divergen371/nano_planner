func = &(&1 * &2)
func2 = &(&1 * &1)

x = func.(3, 5)
y = func2.(6)

IO.inspect(x)
IO.inspect(y)
