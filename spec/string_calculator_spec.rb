require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    let(:calculator) { StringCalculator.new }

    # validates if the method returns 0 if empty string passed to `add`` method
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end
  end
end