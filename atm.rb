class Atm
  def initialize(withdrawal_and_balance = "")
    @input      = withdrawal_and_balance.split
    @withdrawal = @input[0].to_i
    @balance    = @input[1].to_f
    @new_bal    = "%.2f" % @balance
    
    puts "withdrawal: #{@withdrawal} and balance: #{@new_bal}"
    puts @withdrawal % 5 
    valid_multiple
    valid_amount
    balance
  end

  def valid_amount
    if @withdrawal > @balance
      puts "Insufficient funds! Your balance is only #{@new_bal}."
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
    z_bal = @balance - @withdrawal.to_i
    puts "%.2f" % z_bal
  end

end

bill = Atm.new("10 130.00")