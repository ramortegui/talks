# Sample module to illustrate how spawn
# and spawn_link works.
defmodule ProcessesSample do
  def call_function() do
    :timer.sleep(20000)
    IO.puts("function called")
  end

  def force_termination() do
    raise "croak"
  end
end

spawn(ProcessesSample, :call_function, [])
