defmodule User do
  defstruct [:age]
end

defmodule Bar do
  defguard legal_adult?(age) when age >= 21

  def enter?(%User{age: age}) when legal_adult?(age), do: IO.puts("Can enter")
  def enter?(%User{age: _age}), do: IO.puts("Can't enter")

  def drinks?(%User{age: age}) when legal_adult?(age), do: IO.puts("Can ask for drinks")
  def drinks?(%User{age: _age}), do: IO.puts("Can't ask for drinks")
end

user = %User{age: 20}

Bar.enter?(user)
# => Can't enter
Bar.drinks?(user)
# => Can't ask for drinks 

user = %User{age: 22}
Bar.enter?(user)
# => Can enter
Bar.drinks?(user)
# => Can ask for drinks 
