defmodule Calories do
  @moduledoc """
  Documentation for Calories.
  """

  defp modage(age) do
    age * 0.2017
  end

  defp modweight(weight) do
    weight * 0.09036
  end

  defp modheart(heart) do
    heart * 0.6309
  end

  @doc """
  Calculates calories burnt during exercise.

  ## Examples

      iex> Calories.exercise(30, 80, 100, 60)
      98

  """
  def exercise(age, weight, heart, time) do
    round((modage(age) - modweight(weight) + modheart(heart) - 55.0969) * time / 4.184)
  end
end
