# This class holds transaction history
class Statement
  STATEMENT_TITLE_ARR = %w[Time Credit Debit Balance].freeze

  attr_reader :log

  def initialize
    @log = []
  end

  def print_statement
    puts STATEMENT_TITLE_ARR
    @log.reverse_each do |item|
      puts "#{item[0]} || #{item[1]} || #{item[2]} || #{item[3]}"
    end
  end

  def update(array)
    @log << array
  end
end
