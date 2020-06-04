# frozen_string_literal: true

#:nodoc:
class StringCalculator
  def add(string_numbers)

    if string_numbers[0..1] == '//'

      string_numbers = string_numbers.split("\n")
      
      delimiter = string_numbers[0][2..-1]
      nums = string_numbers[1]

      arr = nums.split(delimiter)

      arr.map(&:to_i).inject(0, :+)

    else
      arr = []

      x = string_numbers.split("\n")

      x.each { |el| arr << el.split(',') }

      arr.flatten.map(&:to_i).inject(0, :+)
    end
    
  end
end
