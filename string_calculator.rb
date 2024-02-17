require 'minitest/autorun'
def add(numbers)
  return 0 if numbers.empty?
  # numbers_list = numbers.split(/[\n,]/)

  delimiter = ","
  if numbers.start_with?("//")
    delimiter = numbers[2]
    numbers = numbers[4..-1]
  end

  numbers_list = numbers.split(/[\n#{delimiter}]/)
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

  def test_more_then_two_numbers
    assert_equal(19, add("1,2,9,7"))
  end

  def test_new_lines_between_numbers
    assert_equal(14, add("1\n4,9"))
  end

  def test_delimiter_numbers
    assert_equal(6, add("//;\n1;2;3"))
  end
end
