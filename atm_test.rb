require 'minitest/autorun'
require 'minitest/pride'
require_relative 'atm'


class AtmTest < Minitest::Test

  def test_it_exists
    assert true
  end

  def test_it_has_a_balance
    billy_atm = Atm.new
    assert true, billy_atm.balance
  end

end 
