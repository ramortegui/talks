defmodule Factorial do
  def of(num) when num >=0 do
    _of(num,1)
  end

  defp _of(num, acc) when num == 0 do
    acc
  end
  defp _of(num, acc) when num >= 1 do
    _of(num-1, acc*num)
  end
end
