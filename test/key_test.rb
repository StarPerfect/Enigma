require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
    @key.generate
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_individual_keys
    @key.stubs(:generate).returns([0, 1, 2, 3, 4])

    assert_equal 1, @key.a
    assert_equal 12, @key.b
    assert_equal 23, @key.c
    assert_equal 34, @key.d
  end
end
