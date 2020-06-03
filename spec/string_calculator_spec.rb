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
    it 'returns the sum of 2 numbers passed as a string' do
      expect(subject.add('1,2')).to eq(3)
    end
    it 'returns the sum of any amount of numbers passed as a string and comma-separated' do
      expect(subject.add('1,2,3,4,5')).to eq(15)
    end
  end
end