class Atm
  def initialize(withdrawal_and_balance = "")
    input = withdrawal_and_balance.split
    withdrawal = input[0]
    balance    = input[1]
    puts "withdrawal #{withdrawal} and balance: #{balance}"
  end

  def balance
    2000 
  end

end

bill = Atm.new("10 130.00")