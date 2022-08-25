defmodule Intro do
  def smallest(num1, num2) when num1 < num2, do: num1
  def smallest(_num1, num2), do: num2

  # 2

  def largest(num1, num2) when num1 > num2, do: num1
  def largest(_num1, num2), do: num2

  def largest(num1, num2, num3), do: largest(largest(num1, num2), num3)

  # 3

  def smallest(num1, num2, num3, num4), do: smallest(smallest(num1, num2), smallest(num3, num4))

  # 4

  def ticket_price(age) when age < 18, do: 10
  def ticket_price(age) when age < 65, do: 20
  def ticket_price(_age), do: 15

  # 5

  def next_number(number), do: number + 1

  # 6

  # def factorial(number) do
  #   if number > 0 do
  #     number * factorial(number - 1)
  #   else
  #     1
  #   end
  # end

  def factorial(number) when number <= 0, do: 1
  def factorial(number), do: number * factorial(number - 1)

  # 7

  def fibonacci(number) when number <= 0, do: 0
  def fibonacci(number) when number == 1, do: 1
  def fibonacci(number), do: fibonacci(number - 1) + fibonacci(number - 2)

  # 8



end
