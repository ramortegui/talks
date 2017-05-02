defmodule CalculatorGenServer do
  use GenServer

  def start_link(val) do
    GenServer.start_link(__MODULE__,val, name: __MODULE__)
  end
  def init(val) do
    {:ok, val}
  end
  def handle_cast({:+,val},state) do
    {:noreply,state+val}
  end
  def handle_cast({:-,val},state) do
    {:noreply,state-val}
  end
  def handle_call({:=}, _from , state) do
    {:reply, state, state} 
  end

  #API
  def add(val) do
    GenServer.cast(__MODULE__, {:+, val})
  end
  def sub(val) do
    GenServer.cast(__MODULE__, {:-, val})
  end
  def res() do
    GenServer.call(__MODULE__, {:=})
  end
end
