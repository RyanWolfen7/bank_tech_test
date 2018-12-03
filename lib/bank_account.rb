class BankAccount
  DEFAULT_BALANCE = 0

  attr_reader :owner, :account_num, :balance

  def initialize(name, account_num)
    @owner = name
    @account_num = account_num
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

end
