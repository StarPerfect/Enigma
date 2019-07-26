require './test/test_helper'

class ShiftTest < Minitest::Test
  def setup
    @key = Key.new
    @offset = Offset.new
    @shift = Shift.new(@key, @offset)
  end

  def test_shift_exists
    assert_instance_of Shift, @shift
  end

  def test_can_add_key_to_offset_for_final_shift
    @key.stubs(:key_array).returns([0, 1, 2, 3, 4])
    @key.stubs(:generate).returns([0, 1, 2, 3, 4])
    @key.stubs(:a_key).returns(1)
    @key.stubs(:b_key).returns(12)
    @key.stubs(:c_key).returns(23)
    @key.stubs(:d_key).returns(34)

    assert_equal 2, @shift.a
    assert_equal 14, @shift.b
    assert_equal 26, @shift.c
    assert_equal 38, @shift.d
  end
end
