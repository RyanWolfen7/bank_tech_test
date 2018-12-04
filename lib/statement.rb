# This class holds transaction history
class Statement
  STATEMENT_TITLE_ARR = %w[Time Credit Debit Balance].freeze

  attr_reader :log

  def initialize
    @log = [STATEMENT_TITLE_ARR]
  end

  def print_statement
    @log.each do |item|
      puts "#{item[0]} || #{item[1]} || #{item[2]} || #{item[3]}"
    end
  end
end
