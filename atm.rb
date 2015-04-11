class Atm
  def initialize(withdrawal_and_balance = "")
    input = withdrawal_and_balance.split
    @withdrawal = input[0].to_i
    @balance    = input[1].to_i
    puts "withdrawal: #{@withdrawal} and balance: #{@balance}"
    puts @withdrawal % 5 
    valid_multiple
    valid_amount
  end

  def valid_amount
    if @withdrawal > @balance
      puts "You're trying to take out more than what you have! Your balance #{@balance}."
      exit
    end
  end

  def valid_multiple
    if @withdrawal % 5 == 0 
      puts "Valid multiple for withdrawal"
    else
      puts "Incorrect Withdrawal Amount (not multiple of 5)"
      exit
    end

  end

  def balance
    2000 
  end

end

bill = Atm.new("10 130.00")