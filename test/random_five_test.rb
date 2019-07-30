require './test/test_helper'

class RandomFiveTest < Minitest::Test
  def test_it_creates_five_digit_num
    enigma = Enigma.new
    assert_equal 5, enigma.key_generate.length
  end

  def test_rjust
    five_digits = 43
    five_digits = five_digits.to_s

    assert_equal '00043', five_digits.rjust(5, '0')
  end
end
