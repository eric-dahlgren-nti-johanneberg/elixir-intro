defmodule IntroTest do
  use ExUnit.Case

  test "smallest of two when smallest is first" do
    assert Intro.smallest(1, 2) == 1
  end

  test "smallest of two when smallest is last" do
    assert Intro.smallest(3, 2) == 2
  end

  test "smallest of two of equal size" do
    assert Intro.smallest(1337, 1337) == 1337
  end

  # 2

  test "largest number first" do
    assert Intro.largest(3, 2, 1) == 3
  end

  test "largest number second" do
    assert Intro.largest(2, 3, 1) == 3
  end

  test "largest number last" do
    assert Intro.largest(1, 2, 3) == 3
  end

  test "largest when 2 is the same" do
    assert Intro.largest(3, 3, 1) == 3
  end

  test "largest when 3 is the same" do
    assert Intro.largest(3, 3, 3) == 3
  end

  describe "smallest/4" do
    test "smallest is 1st" do
      assert Intro.smallest(1, 2, 3, 4) == 1
    end

    test "smallest is 2nd" do
      assert Intro.smallest(2, 1, 3, 4) == 1
    end

    test "smallest is 3rd" do
      assert Intro.smallest(2, 3, 1, 4) == 1
    end

    test "smallest is 4th" do
      assert Intro.smallest(2, 3, 4, 1) == 1
    end
  end

  describe "ticket_price/1" do
    test "age is -1" do
      assert Intro.ticket_price(-1) == 10
    end

    test "age is 18" do
      assert Intro.ticket_price(18) == 20
    end

    test "age is 64" do
      assert Intro.ticket_price(64) == 20
    end

    test "age is 65" do
      assert Intro.ticket_price(65) == 15
    end
  end

  describe "next_number/1" do
    test "number is -1" do
      assert Intro.next_number(-1) == 0
    end

    test "number is 1337" do
      assert Intro.next_number(1337) == 1338
    end
  end

  describe "factorial/1" do
    test "0 -> 1" do
      assert Intro.factorial(0) == 1
    end

    test "2 -> 2" do
      assert Intro.factorial(2) == 2
    end

    test "3 -> 6" do
      assert Intro.factorial(3) == 6
    end

    test "4 -> 24" do
      assert Intro.factorial(4) == 24
    end

    test "8 -> 40320" do
      assert Intro.factorial(8) == 40320
    end
  end

  describe "Fibonacci/1" do
    test "0 ger 0" do
      assert Intro.fibonacci(0) == 0
    end

    test "1 ger 1" do
      assert Intro.fibonacci(1) == 1
    end

    test "2 ger 1" do
      assert Intro.fibonacci(2) == 1
    end

    test "6 ger 8" do
      assert Intro.fibonacci(6) == 8
    end
  end

  describe "is_empty/1" do
    test "empty list -> true" do
      assert Intro.is_empty([]) == true
    end

    test "thing in list -> false" do
      assert Intro.is_empty([:thing]) == false
    end
  end

  describe "first_of/1" do
    test "first thing is nil" do
      assert Intro.first_of([nil, :gaming, "gaming!!!!!"]) == nil
    end

    test "first thing is :end_of_world" do
      assert Intro.first_of([:end_of_world, 1337.1337]) == :end_of_world
    end

    test "nil if list is empty" do
      assert Intro.first_of([]) == nil
    end
  end

  describe "last_of/1" do
    test "nil if empty" do
      assert Intro.last_of([]) == nil
    end

    test "last value" do
      assert Intro.last_of([1337, :epic]) == :epic
    end

    test "last value in long list" do
      assert Intro.last_of([1..1337, :last]) == :last
    end
  end

  describe "Prepend/2" do
    test "kan lägga till" do
      assert Intro.first_of(Intro.prepend([1..5], :first)) == :first
    end

    test "tom lista" do
      assert Intro.prepend([], 1) == [1]
    end
  end

  describe "Append/2" do
    test "kan lägga till" do
      assert Intro.last_of(Intro.append([1..5], :last)) == :last
    end
  end

  describe "Length" do
    test "Längen är positiv" do
      assert Intro.list_length([1, 2, 3, 4]) == 4
    end

    test "lista är tom" do
      assert Intro.list_length([]) == 0
    end
  end

  describe "Summa" do
    test "Summan är korrekt" do
      assert Intro.summa([1, 2, 3, 4]) == 10
    end

    test "lista är tom" do
      assert Intro.summa([]) == 0
    end
  end

  describe "Average" do
    test "snittet är korrekt" do
      assert Intro.average([1, 2, 3, 4]) == 2.5
    end

    test "lista är tom" do
      assert Intro.average([]) == 0
    end
  end

  describe "concat" do
    test "två listor läggs ihop" do
      assert Intro.concat([1, 2], [3, 4]) == [1, 2, 3, 4]
    end

    test "lista är tom" do
      assert Intro.concat([], []) == []
    end
  end

  describe "Starts with" do
    test "första tecken är rätt" do
      assert Intro.starts_with("korv", "k") == true
    end

    test "första tecken är fel" do
      assert Intro.starts_with("korv", "v") == false
    end

    test "string är tom" do
      assert Intro.starts_with("", "a") == false
    end
  end

  describe "End with" do
    test "sista tecken är fel" do
      assert Intro.end_with("korv", "k") == false
    end

    test "sista tecken är rätt" do
      assert Intro.end_with("korv", "v") == true
    end

    test "string är tom" do
      assert Intro.end_with("", "a") == false
    end
  end

  describe "Chomp" do
    test "inte har /n" do
      assert Intro.chomp("string") == "string"
    end

    test "/n mitt i string" do
      assert Intro.chomp("str\ning") == "str\ning"
    end

    test "/n i slutet" do
      assert Intro.chomp("string\n") == "string"
    end
  end

  describe "index_of/2" do
    test "nil om tecknet inte finns" do
      assert Intro.index_of("korv", "b") == nil
    end

    test "0 om tecknet finns på första" do
      assert Intro.index_of("korv", "k") == 0
    end

    test "1 om tecknet finns på två platser" do
      assert Intro.index_of("ahahahahaha", "h") == 1
    end
  end

  describe "count_string/2" do
    test "returnerar 0 om det inte finns" do
      assert Intro.count_string("1337", "a") == 0
    end

    test "returnerar 2 när den finns 2 gånger" do
      assert Intro.count_string("1337", "3") == 2
    end
  end

  describe "count_number/2" do
    test "returnerar 0 när nummret inte finns" do
      assert Intro.count([1, 2, 3, 4], 5) == 0
    end

    test "returnerar rätt nummer" do
      assert Intro.count([1, 2, 3, 4, 4], 4) == 2
    end
  end

  describe "contains_string/2" do
    test "true om strängen finns" do
      assert Intro.contains_string("gaming", "g") == true
    end

    test "false om strängen inte finns" do
      assert Intro.contains_string("brobrobrobro", "a") == false
    end
  end

  describe "contains/2" do
    test "true om elementet finns" do
      assert Intro.contains(["g", 2, 4, 5], "g") == true
    end

    test "false om elementet inte finns" do
      assert Intro.contains([1, 2, 33, 4, 5], "a") == false
    end
  end
end
