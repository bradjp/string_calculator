require 'string_calculator'

describe StringCalculator do
  
  subject(:double) { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end
  end
end