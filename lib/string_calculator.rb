# frozen_string_literal: true

#:nodoc:
class StringCalculator
  def add(string_numbers)
    arr = []

    x = string_numbers.split("\n")

    x.each { |el| arr << el.split(',') }

    arr.flatten.map(&:to_i).inject(0, :+)
  end
end
