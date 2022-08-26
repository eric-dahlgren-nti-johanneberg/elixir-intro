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

  def last_of([head | tail]) do
    if tail != [] do
      last_of(tail)
    else
      head
    end
  end

  # 11

  def prepend(list, element), do: [element | list]

  # 12

  def append([], element), do: [element]
  def append([head | tail], element), do: [head | append(tail, element)]

  # 13

  def list_length([]), do: 0
  def list_length([_head | tail]), do: 1 + list_length(tail)

  # 14

  def summa([]), do: 0
  def summa([head | tail]), do: head + summa(tail)

  # 15

  def average([]), do: 0
  def average(list), do: summa(list) / list_length(list)

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

  def chomp_list(list) do
    [head | tail] = list
    [next | next_tail] = tail

    if next != "\n" do
      [head | chomp_list(tail)]
    else
      if list_length(next_tail) > 0 do
        [head | chomp_list(tail)]
      else
        [head]
      end
    end
  end

  def chomp(str) do
    if(end_with(str, "\n")) do
      list = String.graphemes(str)
      Enum.join(chomp_list(list))
    else
      str
    end
  end

  def index_of("", _char), do: nil
  def index_of(_string, ""), do: nil

  def index_of(string, char) do
    [head | tail] = String.graphemes(string)

    if(head != char) do
      index = index_of(Enum.join(tail), char)

      if index != nil do
        1 + index
      else
        nil
      end
    else
      0
    end
  end

  def count([], _element), do: 0

  def count(list, element) do
    [head | tail] = list

    if head != element do
      0 + count(tail, element)
    else
      1 + count(tail, element)
    end
  end

  def count_string(string, char) do
    list = String.graphemes(string)

    count(list, char)
  end

  def contains(list, element), do: count(list, element) > 0

  def contains_string(string, char), do: contains(String.graphemes(string), char)
end
