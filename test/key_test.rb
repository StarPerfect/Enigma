require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new('01234')
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_individual_keys
    assert_equal  1, @key.get_keys[:a]
    assert_equal 12, @key.get_keys[:b]
    assert_equal 23, @key.get_keys[:c]
    assert_equal 34, @key.get_keys[:d]

    expected = { a: 1, b: 12, c: 23, d: 34 }

    assert_equal expected, @key.get_keys
  end
end
