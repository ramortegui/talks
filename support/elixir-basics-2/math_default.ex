defmodule Math do
  def sum(a,b \\ 2,c \\ 3) do
    a + b + c
  end

  def sum(a,b) do
    a + b
  end
end
