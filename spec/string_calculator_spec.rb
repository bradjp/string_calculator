require 'string_calculator'

describe StringCalculator do
  
  subject(:double) { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end
    it 'returns the number when passed a single number as a string' do
      expect(subject.add('1')).to eq(1)
    end
  end
end