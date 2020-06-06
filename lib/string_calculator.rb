# frozen_string_literal: true

#:nodoc:
class StringCalculator
  def add(string_numbers)
    string_numbers[0..1] != '//' ? process_string(string_numbers) : process_custom_delimiter(string_numbers)
  end

  private

  def process_string(string_numbers)
    arr = []

    nums = string_numbers.split("\n")

    nums.each { |el| arr << el.split(',') }

    ints = arr.flatten.map(&:to_i)

    ints.select! { |num| num <= 1000 }

    check_for_negatives(ints)

    ints.inject(0, :+)
  end

  def process_custom_delimiter(string_numbers)
    string_numbers = string_numbers.split("\n")

    delimiter = string_numbers[0][2..-1]
    long_delimiter = delimiter[1..-2]

    if custom_delimiter(delimiter)
      calculate(long_delimiter, string_numbers)
    else
      calculate(delimiter, string_numbers)
    end
  end

  def check_for_negatives(ints)
    negatives = []

    ints.each do |num|
      negatives << num if num.negative?
    end

    negatives_string = negatives.join(',')

    raise StandardError, "Negatives not allowed (#{negatives_string})" unless negatives.empty?
  end

  def calculate(delimiter, string_numbers)
    nums = string_numbers[1]

    ints = nums.split(delimiter).map(&:to_i)

    ints.select! { |num| num <= 1000 }

    check_for_negatives(ints)

    ints.inject(0, :+)
  end

  def custom_delimiter(delimiter)
    delimiter[0] == '[' && delimiter[-1] == ']'
  end
end
