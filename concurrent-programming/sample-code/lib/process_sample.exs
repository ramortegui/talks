# Spawn an anonymous function
spawn(fn -> IO.puts "Hello World!" end)

# Spawn a function of a named function
spawn(IO, :puts, ["Hello World!"])

# Spawn an anonymous function with sleep
pid = spawn(fn -> 
  :timer.sleep(50000)
  IO.puts "Hello World!" end)

