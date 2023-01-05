require_relative '../solver.rb'

describe Solver do 
  context "Testing Solver methods" do
    solver = Solver.new
    it  "Test factorial method" do 
      arg = 5
      result = 120
      expect(solver.factorial(arg)).to eql result
    end

    it 'should reverse the string' do
      string = 'hello'
      reversed_str = 'olleh'
      expect(solver.reverse(string)).to eql reversed_str
    end
  end
end
