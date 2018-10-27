defmodule RaList do
  def print_list([head|tail]) do
    IO.puts head
    print_list(tail)
  end
  def print_list([]), do: IO.puts ""
end


