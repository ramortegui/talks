defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "sum two numbers" do
    assert Calculator.sum(1,2) == 3 
  end
end
