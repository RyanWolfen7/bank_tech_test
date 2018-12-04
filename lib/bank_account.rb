# This is the BankAccount class that handles users funds
class BankAccount
  DEFAULT_BALANCE = 0.00
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
    debit_statement(amount)
  end

  def withdraw(amount)
    @balance -= amount
    credit_statement(amount)
  end

  def print_statement
    @statement.each do |item|
      puts "#{item[0]} || #{item[1]} || #{item[2]} || #{item[3]}"
    end
  end

  private

  def debit_statement(amount)
    @statement << [Time.now.strftime('%d/%m/%Y'), '', amount, @balance]
  end

  def credit_statement(amount)
    @statement << [Time.now.strftime('%d/%m/%Y'), amount, '', @balance]
  end
end
