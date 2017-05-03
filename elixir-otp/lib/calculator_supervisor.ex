#Module that uses Supervisor behaviour
defmodule CalculatorSupervisor do
  use Supervisor
  def start_link(state) do
    Supervisor.start_link(__MODULE__,state)
  end
  def init(state) do
    processes = [worker(CalculatorGenServer,[state])]
    supervise( processes, strategy: :one_for_one )
  end
end
