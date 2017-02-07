defmodule MyList do
  def iterate([]) do  end
  def iterate([head | tail]) do
    IO.puts head
    iterate(tail)
  end

end
