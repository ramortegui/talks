#Sample module to illustrate how spawn
#and spawn_link works.
defmodule MyModule do
  def call_function() do
    IO.puts "function called"
  end
  def force_termination() do
    raise "croak"
  end
end
