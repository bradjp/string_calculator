# frozen_string_literal: true

#:nodoc:
class StringCalculator
  def add(string_numbers)
    if string_numbers[0..1] != '//'
      process_string(string_numbers)
    else
      process_custom_delimiter(string_numbers)
    end
  end

  private

  def process_string(string_numbers)
    arr = []

    nums = string_numbers.split("\n")

    nums.each { |el| arr << el.split(',') }

    arr.flatten.map(&:to_i).inject(0, :+)
  end

  def process_custom_delimiter(string_numbers)
    string_numbers = string_numbers.split("\n")

    delimiter = string_numbers[0][2..-1]

    nums = string_numbers[1]

    nums.split(delimiter).map(&:to_i).inject(0, :+)
  end
end
