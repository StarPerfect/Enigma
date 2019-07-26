require './test/test_helper'

class MessageTest < Minitest::Test
  def setup
    @key = Key.new('02715')
    @offset = Offset.new('040895')
    @shift = Shift.new(@key, @offset)
    @plain_text = Message.new('Corina Rae Allen!', @shift.final_shift)
  end

  def test_character_set
    assert_equal 27, @plain_text.alphabet.length
  end
end
