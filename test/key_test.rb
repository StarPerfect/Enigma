require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new('01234')
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_individual_keys
    assert_equal  1, @key.a_key
    assert_equal 12, @key.b_key
    assert_equal 23, @key.c_key
    assert_equal 34, @key.d_key
  end
end
