class Atm
  def initialize(withdrawal_and_balance = "")
    input = withdrawal_and_balance.split
    @withdrawal = input[0]
    @balance    = input[1]
    puts "withdrawal: #{@withdrawal} and balance: #{@balance}"
    puts @withdrawal.to_i % 5 
    valid_input

  end

  def valid_input
    if @withdrawal.to_i % 5 == 0 
      puts "Valid multiple for withdrawal"
    else
      puts "Not a valid withdrawal amount"
      exit
    end

  end

  def balance
    2000 
  end

end

bill = Atm.new("10 130.00")