class StringCalculator

  def add(string_numbers)
    return 0 if string_numbers.empty?

    # if string_numbers.length == 1
    #   string_numbers.to_i
    # else
    #   string_numbers[0].to_i + string_numbers[-1].to_i
    # end

    numbers_array = string_numbers.split(',')

    numbers_array.map! { |num| num.to_i }.sum

  end

end