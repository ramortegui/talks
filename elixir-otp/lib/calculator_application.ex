defmodule CalculatorApplication do
  use Application
  def start(_type_,_other_) do
    import Supervisor.Spec, warn: false
    children = [
       supervisor(CalculatorSupervisor, [])
       ]
      opts = [strategy: :one_for_one, name: __MODULE__]
      Supervisor.start_link(children, opts)
  end
end
