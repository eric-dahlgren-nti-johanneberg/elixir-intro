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

  def is_empty([]), do: true
  def is_empty(_list), do: false

  # 9

  def first_of([]), do: nil
  def first_of(list), do: hd(list)

  # 10

  def last_of([]), do: nil

  def last_of(list) do
    [head | tail] = list

    if tail != [] do
      last_of(tail)
    else
      head
    end
  end

  # 11

  def prepend(list, element) do
    [element | list]
  end

  # 12

  def append([], element), do: [element]

  def append(list, element) do
    [head | tail] = list
    [head | append(tail, element)]
  end

  # 13

  def list_length([]), do: 0

  def list_length(list) do
    [_head | tail] = list
    1 + list_length(tail)
  end

  # 14

  def summa([]), do: 0

  def summa(list) do
    [head | tail] = list
    head + summa(tail)
  end

  # 15

  def average([]), do: 0

  def average(list) do
    summa(list) / list_length(list)
  end

  # 16

  def concat([], list), do: list
  def concat(list, []), do: list

  def concat(list1, list2) do
    [head | tail] = list2

    concat(append(list1, head), tail)
  end

  # 17

  def starts_with("", _char), do: false

  def starts_with(string, char) do
    list_string = String.graphemes(string)
    first_of(list_string) == char
  end

  # 18

  def end_with("", _char), do: false

  def end_with(string, char) do
    list_string = String.graphemes(string)
    last_of(list_string) == char
  end

  # 19

  # def chomp_s(string) when last_of(String.graphemes(string)) == "\n"

  def chomp_s(string) do
    if end_with(string, "\n") do
      ls = String.graphemes(string)
      [head | tail] = ls

      if tail == [] do
        Enum.join(ls)
      else
        chomp_s()
      end
    else
      string
    end
  end
end
