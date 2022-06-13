defmodule Lasagna do
  # Define the expected oven time in minutes
  def expected_minutes_in_oven(), do: 40

  # Calculate the remaining oven time in minutes
  def remaining_minutes_in_oven(time), do: expected_minutes_in_oven() - time

  # Calculate the preparation time in minutes
  def preparation_time_in_minutes(layers), do: 2 * layers

  # Calculate the total working time in minutes
  def total_time_in_minutes(layers, time), do: preparation_time_in_minutes(layers) + time

  def alarm(), do: "Ding!"
end
