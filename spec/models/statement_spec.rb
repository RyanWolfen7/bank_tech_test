require 'statement.rb'

describe Statement do
  describe '#initialize' do
    it 'should hold an the default title' do
      statement = Statement.new
      expect(statement.log).to eq([%w[Time Credit Debit Balance]])
    end

    it 'should hold a 2d array' do
      statement = Statement.new
      statement.log << ['june', '', 500, 500]
      var = [%w[Time Credit Debit Balance], ['june', '', 500, 500]]
      expect(statement.log).to eq(var)
    end
  end
  describe '#print_statement' do
    it 'should print out a statement correctly' do
      statement = Statement.new
      statement.log << statement = Statement.new
      statement.log << ['june', '', 500, 500]
      statement.log << ['june', 50, '', 450]
      expect(statement.print_statement).to eq(statement.log)
    end
  end
end
