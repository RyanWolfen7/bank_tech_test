require 'statement.rb'

describe Statement do
  describe '#print_statement' do
    it 'should print out a statement correctly' do
      statement = Statement.new
      statement.log << ['june', '', 500, 500]
      statement.log << ['june', 50, '', 450]
      expect(statement.print_statement).to eq(statement.log)
    end
  end
end
