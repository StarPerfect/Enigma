require './test/test_helper'

class RandomFiveTest < Minitest::Test
  def test_it_creates_five_digit_num
    enigma = Enigma.new
    assert_equal 5, enigma.key_generate.length
  end
end
