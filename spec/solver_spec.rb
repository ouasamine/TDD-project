require_relative '../solver'

describe Solver do
  solver = Solver.new
  context 'factorial method' do
    it 'should return factorial of the number' do
      arg = 5
      result = 120
      expect(solver.factorial(arg)).to eql result
    end

    it 'should return 0' do
      arg = 0
      result = 1
      expect(solver.factorial(arg)).to eql result
    end

    it 'should raise an exception' do
      arg = -3
      expect { solver.factorial(arg) }.to raise_error('No negative numbers are accepted')
    end
  end

  context 'reverse method' do
    it 'should reverse the string' do
      string = 'hello'
      reversed_str = 'olleh'
      expect(solver.reverse(string)).to eql reversed_str
    end
  end

  context 'fizzbuzz method' do
    it 'Should return fizz argument is divisible by 3' do
      arg = 3
      result = 'fizz'
      expect(solver.fizzbuzz(arg)).to eql result
    end

    it 'Should return buzz argument is divisible by 5' do
      arg = 5
      result = 'buzz'
      expect(solver.fizzbuzz(arg)).to eql result
    end

    it 'Should return fizzbuzz argument is divisible by 3 and 5' do
      arg = 15
      result = 'fizzbuzz'
      expect(solver.fizzbuzz(arg)).to eql result
    end

    it 'Should return the number as string if not divisible 3 and 5, 3 or 5' do
      arg = 7
      result = '7'
      expect(solver.fizzbuzz(arg)).to eql result
    end
  end
end
