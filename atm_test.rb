require 'minitest/autorun'
require 'minitest/pride'

require_relative 'atm'

class ATMTest < Minitest::Test
  def test_it_has_a_balance
    billy_atm = Atm.new
    assert_equal 2000, billy_atm.balance
  end
end 
