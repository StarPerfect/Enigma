require './test/test_helper'

class SixDigitDateTest < Minitest::Test
  def test_creates_six_digit_date
    enigma = Enigma.new
    assert_equal 6, enigma.six_digit_date.length
  end
end
