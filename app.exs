defmodule Input do
  def get_integer(label) do
      IO.gets("#{label}? ") |> String.trim_trailing |> String.to_integer
  end
end

age = Input.get_integer("Age (years)")
weight = Input.get_integer("Weight (kgs)")
heart = Input.get_integer("Heart rate (bpm)")
time = Input.get_integer("Time (mins)")
calories = Calories.exercise(age, weight, heart, time)

IO.puts "You burned #{calories} calories!"
