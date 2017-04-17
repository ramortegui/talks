defmodule Mem do
  use GenServer
  def start_link(num) do
    GenServer.start_link(__MODULE__,num,[])
  end
  def init(num\\0) do
    {:ok, num}
  end
  def set(pid,num) do
    GenServer.cast(pid,{:set, num})
  end
  def get(pid) do
    GenServer.call(pid,:get)
  end

  def handle_call({:get},_form,num) do
    {:reply,num,num} 
  end
  def handle_cast({:set,new_num}) do
    {:noreply,new_num}
  end
end
