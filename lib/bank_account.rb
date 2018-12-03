class BankAccount
  attr_reader :owner
  
  def initialize(name, account_num)
    @owner = name
  end

end
