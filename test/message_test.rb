require './test/test_helper'

class MessageTest < Minitest::Test
  def setup
    @key = Key.new('02715')
    @offset = Offset.new('040895')
    @encrypt_shift = Shift.new(@key, @offset)
    @encrypt_cipher = Cipher.new(@encrypt_shift)
    @decrypt_shift = Shift.new(@key, @offset, -1)
    @decrypt_cipher = Cipher.new(@decrypt_shift)
    @plain_text = Message.new('hello world', @encrypt_cipher)
    @coded_text = Message.new('keder ohulw', @decrypt_cipher)
  end

  def test_message_exists
    assert_instance_of  Message, @plain_text
  end

  def test_attributes
    assert_equal 'hello world', @plain_text.message
  end

  def test_encrypt_message
    assert_equal "keder ohulw", @plain_text.encrypt_message('hello world')
  end

  def test_decrypt_message
    assert_equal 'hello world', @coded_text.decrypt_message('keder ohulw')
  end
end
