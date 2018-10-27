# Math implementation of fibonacci
defmodule Fibonacci do
  def calculate(0), do: 0
  def calculate(1), do: 1
  def calculate(num) when num > 1, do: calculate(num-1) + calculate(num-2)
end

Enum.map(1..5, fn(x)->
  spawn(fn ->
    IO.puts "#{x} #{Fibonacci.calculate(45)}" end) 
end)
