class StringCalculator

  def add(string_numbers)
    return 0 if string_numbers.empty?

    if string_numbers.length == 1
      string_numbers.to_i
    else
      string_numbers[0].to_i + string_numbers[-1].to_i
    end
  end

end