class StringCalculator
  def add(string_numbers)
    arr = []
    x = string_numbers.split("\n")

    x.each { |el| arr << el.split(',') }
    arr.flatten!
    arr.map { |num| num.to_i }
       .inject(0, :+)
  end
end
