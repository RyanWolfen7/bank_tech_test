# This is the BankAccount class that handles users funds
class BankAccount
  DEFAULT_BALANCE = 0.00

  attr_reader :owner, :account_num, :balance, :statement

  def initialize(name, account_num)
    @owner = name
    @account_num = account_num
    @balance = DEFAULT_BALANCE
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    debit_statement(amount)
  end

  def withdraw(amount)
    @balance -= amount
    credit_statement(amount)
  end

  private

  def debit_statement(amount)
    @statement.log << [Time.now.strftime('%d/%m/%Y'), '', amount, @balance]
  end

  def credit_statement(amount)
    @statement.log << [Time.now.strftime('%d/%m/%Y'), amount, '', @balance]
  end
end
