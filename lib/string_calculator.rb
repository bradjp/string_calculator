class StringCalculator

  def add(string_numbers)

    string_numbers.split(',')
    .map { |num| num.to_i }
    .inject(0, :+)

  end

end