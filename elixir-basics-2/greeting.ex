defmodule Greeting do
  def greeting(name, age) when age < 2 do
    IO.puts "Gaga #{name}"
  end
  def greeting(name, age) when age < 5 do
    IO.puts "Hi #{name}"   
  end
  def greeting(name, age) do
    IO.puts "Hello #{name}"
  end
end
