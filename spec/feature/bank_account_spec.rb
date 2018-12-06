require 'bank_account.rb'
require 'statement.rb'

describe '#Feature TEST' do

      it 'should have an array of time, deposit, and balance' do
        bank_account = BankAccount.new('Tony', 101_911, Statement.new)
        bank_account.deposit(500)
        time = Time.now.strftime('%d/%m/%Y')
        expect(bank_account.statement.log[0][0]).to eq(time)
        expect(bank_account.statement.log[0][1]).to eq('')
        expect(bank_account.statement.log[0][2]).to eq(500)
        expect(bank_account.statement.log[0][3]).to eq(500)
      end

      it 'should have the correct balance in the second statement' do
        bank_account = BankAccount.new('Tony', 101_911, Statement.new)
        bank_account.deposit(500)
        bank_account.deposit(500)
        time = Time.now.strftime('%d/%m/%Y')
        expect(bank_account.statement.log[1][0]).to eq(time)
        expect(bank_account.statement.log[1][1]).to eq('')
        expect(bank_account.statement.log[1][2]).to eq(500)
        expect(bank_account.statement.log[1][3]).to eq(1000)
      end

      it 'should have a credit on the statement' do
        bank_account = BankAccount.new('Tony', 101_911, Statement.new)
        bank_account.deposit(500)
        bank_account.withdraw(50)
        time = Time.now.strftime('%d/%m/%Y')
        expect(bank_account.statement.log[1][0]).to eq(time)
        expect(bank_account.statement.log[1][1]).to eq(50)
        expect(bank_account.statement.log[1][2]).to eq('')
        expect(bank_account.statement.log[1][3]).to eq(450)
      end
end
