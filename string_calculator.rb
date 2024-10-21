class StringCalculator
  def add(numbers)

    # returns 0 if empty string is passed to the method -- add("")
    return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = parts.first[2..-1]
      numbers = parts.last
    end

    # Replace '\n' with ','
    numbers.gsub!("\n", delimiter)
    num_list = numbers.split(delimiter).map(&:to_i)

    # Raises error when negative numbers are passed
    negatives = num_list.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    num_list.sum
  end
end
