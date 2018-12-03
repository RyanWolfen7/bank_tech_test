class BankAccount
  attr_reader :owner, :account_num

  def initialize(name, account_num)
    @owner = name
    @account_num = account_num
  end

end
