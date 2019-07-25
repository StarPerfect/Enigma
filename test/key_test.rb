require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new(5)
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_key_attributes
    assert_equal 5, @key.places
  end

  def test_generate_key
    expected = stub(:generate).return(12345)

    assert_equal expected, @key.generate(5)
  end
end
