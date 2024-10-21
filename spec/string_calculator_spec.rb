require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    let(:calculator) { StringCalculator.new }

    # validates if the method returns 0 if empty string passed to `add`` method
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    # Test case to verify one number
    it 'returns the number itself for a single number' do
      expect(calculator.add("5")).to eq(5)
    end

    # Test case to verify `,` seperated numbers
    it 'returns the sum of two numbers' do
      expect(calculator.add("6,5")).to eq(11)
    end

    it 'handles any amount of numbers' do
      expect(calculator.add("1,2,3,4,5")).to eq(15)
    end

    # Test case to verify `\n` between numbers
    it 'handles new lines between numbers' do
      expect(calculator.add("2\n3,4")).to eq(9)
    end

    # Test to verify support for different delimiters
    it 'supports different delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    # Tests to verify functionality when negative numbers are passed
    it 'raises an exception for negative numbers' do
      expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end

    it 'shows all negative numbers in the exception message' do
      expect { calculator.add("1,-2,-3,4") }.to raise_error("negative numbers not allowed -2,-3")
    end
  end
end
