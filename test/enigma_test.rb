require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @key = Key.new
    @offset = Offset.new
    @shift = Shift.new(@key, @offset)
    @enigma = Enigma.new
  end

  def test_enigma_exists
    assert_instance_of Enigma, @enigma
  end

  def test_attributes
    assert_equal 
    assert_equal 27, @enigma.alphabet.length
  end

  def test_enrypt
    expected = {
      encryption: 'keder ohulw',
      key: '02715',
      date: '040895'
    }

    assert_equal expected, @enigma.encrypt('hello world', '02715', '040895')
  end
end
