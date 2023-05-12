double_or_triple = fn
  :a, n -> {:a, n * 2}
  :b, n -> {:b, n * 3}
  _, n -> {:anything, n}
end

x = double_or_triple.(:a, 7)
y = double_or_triple.(:b, 7)
z = double_or_triple.(:c, 7)

IO.inspect(x)
IO.inspect(y)
IO.inspect(z)
