require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new('123456')
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_generate
    assert_equal '3936', @offset.generate
  end

  def test_get_offsets
    expected = {a: 3, b: 9, c: 3, d: 6}
    assert_equal expected, @offset.get_offset
    assert_equal 3, @offset.get_offset[:a]
    assert_equal 9, @offset.get_offset[:b]
    assert_equal 3, @offset.get_offset[:c]
    assert_equal 6, @offset.get_offset[:d]
  end
end
