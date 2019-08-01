require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_enigma_exists
    assert_instance_of Enigma, @enigma
  end

  def test_enrypt
    expected = {
      encryption: 'keder ohulw',
      key: '02715',
      date: '040895'
    }

    assert_equal expected, @enigma.encrypt('hello world', '02715', '040895')
  end

  def test_decrypt
    expected = {
      decryption: 'hello world',
      key: '02715',
      date: '040895'
    }

    assert_equal expected, @enigma.decrypt('keder ohulw', '02715', '040895')
  end

  def test_encrypt_without_key_or_offset
    key = mock('Key')
    key.stubs(:five_digits).returns('12345')
    offset = mock('Offset')
    offset.stubs(:six_digit_date).returns('012345')
    offset.stubs(:date).returns('012345')
    enigma = Enigma.new

    expected = {
      encryption: 'xk ehx',
      key: '12345',
      date: '012345'
    }

    # assert_equal expected, enigma.encrypt('corina', key.five_digits, offset.date)
    assert_equal expected, enigma.encrypt('corina', key.five_digits)
    assert_equal expected, enigma.encrypt('corina')
  end
end
