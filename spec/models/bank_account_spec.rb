require 'bank_account.rb'

describe BankAccount do
  describe '#Initialize' do
    it 'should list name, account number, balance' do
      bank_account = BankAccount.new('Tony', 101911)
      expect(bank_account.owner).to eq('Toney')
      expect(bank_account.account_num).to eq(101911)
      expect(bank_account.balance).to eq(0)
    end
  end
end
