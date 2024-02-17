require 'minitest/autorun'
def add(numbers)
  return 0 if numbers.empty?
  numbers_list = numbers.split(",")
  sum = 0
  numbers_list.each do |num|
    sum += num.to_i
  end
  sum
end

class TestStringCalculator < Minitest::Test
  def test_empty_string
    assert_equal(0, add(""))
  end

  def test_single_number
    assert_equal(1, add("1"))
  end

  def test_two_numbers
    assert_equal(3, add("1,2"))
  end
end
