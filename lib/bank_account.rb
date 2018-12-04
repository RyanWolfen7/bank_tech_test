# This is the BankAccount class that handles users funds
class BankAccount
  DEFAULT_BALANCE = 0
  STATEMENT_TITLE_ARR = %w[Time Credit Debit Balance].freeze

  attr_reader :owner, :account_num, :balance, :statement

  def initialize(name, account_num)
    @owner = name
    @account_num = account_num
    @balance = DEFAULT_BALANCE
    @statement = [STATEMENT_TITLE_ARR]
  end

  def deposit(amount)
    @balance += amount
    deposit_statement(amount)
  end

  def withdraw(amount)
    @balance -= amount
  end

  private

  def deposit_statement(amount)
    @statement << [Time.now.strftime('%d/%m/%Y'), '', amount, @balance]
  end
end
