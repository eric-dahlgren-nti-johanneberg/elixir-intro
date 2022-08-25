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

  end

  describe "first_of/1" do

  end

  describe "last_of/1" do

  end


end
