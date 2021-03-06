require 'bank_account_helper.rb'

describe BankAccount do
  describe '#Initialize' do
    it 'should list name, account number, balance' do
      bank_account = BankAccount.new('Tony', 101_911, 'statement')
      expect(bank_account.owner).to eq('Tony')
      expect(bank_account.account_num).to eq(101_911)
      expect(bank_account.balance).to eq(0)
    end
  end

  describe '#Deposit' do
    it 'balance should change from 0 to 500' do
      bank_account = BankAccount.new('Tony', 101_911, 'statement')
      bank_account.deposit(500)
      expect(bank_account.balance).to eq(500)
    end
  end

  describe '#Withdraw' do
    it 'balance should change from 500 to 450' do
      bank_account = BankAccount.new('Tony', 101_911, 'statement')
      bank_account.deposit(500)
      bank_account.withdraw(50)
      expect(bank_account.balance).to eq(450)
    end
  end
end
