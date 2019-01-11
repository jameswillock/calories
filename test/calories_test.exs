defmodule CaloriesTest do
  use ExUnit.Case
  doctest Calories

  test "it calculates calories burnt" do
    assert Calories.exercise(30, 80, 100, 60) == 98
  end

  test "rounded to nearest calorie" do
    assert Calories.exercise(30.5, 80.25, 100.75, 60.1) == 106
  end 
end
