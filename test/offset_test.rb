require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new('1234')
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_individual_offsets
    assert_equal 2, @offset.a_offset
    assert_equal 7, @offset.b_offset
    assert_equal 5, @offset.c_offset
    assert_equal 6, @offset.d_offset
  end
end
