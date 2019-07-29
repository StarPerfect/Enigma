require './test/test_helper'

class CipherTest < Minitest::Test
  def setup
    @key = Key.new('02715')
    @offset = Offset.new('040895')
    @shift = Shift.new(@key, @offset)
    @cipher = Cipher.new(@shift)
  end

  def test_cipher_exists
    assert_instance_of Cipher, @cipher
  end

  def test_attributes
    binding.pry
  end
end
