require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_generate_key
    assert_equal 5, @key.generate.length
  end
end
