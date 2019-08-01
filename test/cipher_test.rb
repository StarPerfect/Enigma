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
    assert_equal 27, @cipher.alphabet.length
  end

  def test_cipher
    assert_equal 'd', @cipher.cipher[:a]['a']
    assert_equal 'a', @cipher.cipher[:b]['a']
    assert_equal 't', @cipher.cipher[:c]['a']
    assert_equal 'u', @cipher.cipher[:d]['a']
  end

  def test_negative_shift_cipher
    shift = mock('Shift')
    shift.stubs(:final_shift).returns({a: -3, b: -3, c: -3, d: -3})

    expected = {
      a: {}
    }
  end
end
