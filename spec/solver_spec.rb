require_relative '../solver'

describe Solver do
  context 'Testing Solver methods' do
    solver = Solver.new
    it 'Test factorial method' do
      arg = 5
      result = 120
      expect(solver.factorial(arg)).to eql result
    end

    it 'should reverse the string' do
      string = 'hello'
      reversed_str = 'olleh'
      expect(solver.reverse(string)).to eql reversed_str
    end

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
