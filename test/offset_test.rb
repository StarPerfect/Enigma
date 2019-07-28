require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new('1234')
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  # def test_date
  #   assert_equal
  # end

  def test_generate
    assert_equal '2756', @offset.generate
  end

  def test_get_offsets
    expected = {a: 2, b: 7, c: 5, d: 6}
    assert_equal expected, @offset.get_offset
    assert_equal 2, @offset.get_offset[:a]
    assert_equal 7, @offset.get_offset[:b]
    assert_equal 5, @offset.get_offset[:c]
    assert_equal 6, @offset.get_offset[:d]
  end
end
