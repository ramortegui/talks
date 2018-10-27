x = fn() -> IO.puts "Hello World!" end
y = fn(name) -> IO.puts "Hello #{name}" end
z = &(IO.puts"Hello #{&1}")


val = 10
sum_10 = fn(num) -> num + val end
IO.puts sum_10.(10)
val = 20
IO.puts sum_10.(10)
