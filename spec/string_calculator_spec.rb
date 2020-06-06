# frozen_string_literal: true

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
    it 'can process \n separations as well as commas' do
      expect(subject.add("1\n2,3")).to eq(6)
    end
    it 'can accept custom delimiters' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end
    it 'throws an error when passed a negative number' do
      expect { subject.add('-1') }.to raise_exception(StandardError, 'Negatives not allowed (-1)')
    end
    it 'throws an error when passed two negative numbers' do
      expect { subject.add('1,0,-1,-2') }.to raise_exception(StandardError, 'Negatives not allowed (-1,-2)')
    end
    it 'throws an error when passed multiple negative numbers' do
      expect { subject.add('1,0,-1,-2,-3,-4') }.to raise_exception(StandardError, 'Negatives not allowed (-1,-2,-3,-4)')
    end
    it 'throws an error when passed multiple negative numbers - and a custom delimiter' do
      expect { subject.add("//;\n1;0;-1;-2;-3;-4") }.to raise_exception(StandardError, 'Negatives not allowed (-1,-2,-3,-4)')
    end
    it 'ignores numbers larger than 1000' do
      expect(subject.add('1,2,1001')).to eq(3)
    end
    it 'ignores numbers larger than 1000 when passed a custom delimiter' do
      expect(subject.add("//;\n1;2;1001")).to eq(3)
    end
    it 'allows custom delimiters of any length' do
      expect(subject.add("//[***]\n1***2***3")).to eq(6)
    end
  end
end
