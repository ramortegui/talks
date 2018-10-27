# Module calculator as process
defmodule Calculator do
  def init(val) do
    spawn(fn -> loop(val) end)
  end

  def loop(val) do
    receive do
      {:+, num} ->
        loop(val + num)

      {:-, num} ->
        loop(val - num)

      {:=, pid} ->
        send(pid, {:ok, val})
        loop(val)
    end
  end
end
