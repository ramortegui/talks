defmodule Factorial do
  def of(x) when x == 0 do
    1
  end
  def of(x) when x >=0 do
    of(x-1) * x
  end
end
