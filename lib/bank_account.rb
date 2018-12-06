# This is the BankAccount class that handles users funds
class BankAccount
  DEFAULT_BALANCE = 0.00

  attr_reader :owner, :account_num, :balance, :statement

  def initialize(name, account_num, statement)
    @owner = name
    @account_num = account_num
    @balance = DEFAULT_BALANCE
    @statement = statement
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
    @statement.update(
      [Time.now.strftime('%d/%m/%Y'), '', amount, @balance]
    ) if @statement.is_a?(Statement)
  end

  def credit_statement(amount)
    @statement.update(
      [Time.now.strftime('%d/%m/%Y'), amount, '', @balance]
    ) if @statement.is_a?(Statement)
  end
end
