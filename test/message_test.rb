require './test/test_helper'

class MessageTest < Minitest::Test
  def setup
    @key = Key.new('02715')
    @offset = Offset.new('040895')
    @shift = Shift.new(@key, @offset)
    @plain_text = Message.new('hello world', @shift.final_shift)
  end

  def test_message_exists
    assert_instance_of  Message, @plain_text
  end

  def test_attributes
    assert_equal 'hello world', @plain_text.message
    assert_equal 27, @plain_text.alphabet.length
  end

  def test_encrypt
    assert_equal "keder ohulw", @plain_text.encrypt('hello world')
  end
end
