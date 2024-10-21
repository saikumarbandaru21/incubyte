class StringCalculator
  def add(numbers)

    # returns 0 if empty string is passed to the method -- add("")
    return 0 if numbers.empty?

    return numbers.to_i if numbers.length == 1
  end
end