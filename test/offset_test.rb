require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_generate_offset
    assert_equal 4, @offset.generate.length
  end

  def test_individual_offsets
    @offset.stubs(:generate).returns('1234')

    assert_equal 1, @offset.a_offset
    assert_equal 2, @offset.b_offset
    assert_equal 3, @offset.c_offset
    assert_equal 4, @offset.d_offset
  end
end
