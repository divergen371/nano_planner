func = &{:ok, &1 * &1}
func2 = &[:ok, &1 * &1]
x = func.(7)
y = func2.(7)
IO.inspect(x)
IO.inspect(y)
