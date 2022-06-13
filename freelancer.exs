defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    month = hourly_rate * 8.0 * 22
    ceil(apply_discount(month, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    day = 8.0 * apply_discount(hourly_rate, discount)
    Float.floor(budget / day, 1)
  end
end
