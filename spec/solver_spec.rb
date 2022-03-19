# frozen_string_literal: true

require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe 'factorial method' do
    it 'returns a factorial of a number' do
      expect(@solver.factorial(3)).to eq(6)
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'returns an exception' do
      expect { @solver.factorial(-1) }.to raise_error('You cannot calculate factorial of a negative number')
    end
  end

  describe 'Fizzbuzz method' do
    it 'Returns fizzbuzz if the number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns fizz if the number is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'returns buzz if the number is divisible by 5' do
      expect(@solver.fizzbuzz(25)).to eq('buzz')
    end
  end
end
