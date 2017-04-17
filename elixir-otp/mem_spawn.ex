defmodule Mem do
  def start(num \\ 0) do
    spawn(fn-> loop(num) end)
  end

  def loop(num) do
    new_num = receive do
      {:get, req_pid} ->
        send(req_pid,num)
        num
      {{:set,set_num},req_pid}->
        send(req_pid,set_num)
        set_num
      _ ->
        IO.puts "Invalid request"
    end
    loop(new_num)
  end
end
