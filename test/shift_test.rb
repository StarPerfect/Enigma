require './test/test_helper'

class ShiftTest < Minitest::Test
  def setup
    @key = Key.new('02715')
    @offset = Offset.new('040895')
    @shift = Shift.new(@key, @offset)
  end

  def test_shift_exists
    assert_instance_of Shift, @shift
  end

  def test_can_add_key_to_offset_for_final_shift
    assert_equal 3, @shift.a
    assert_equal 27, @shift.b
    assert_equal 73, @shift.c
    assert_equal 20, @shift.d
    assert_equal [3, 27, 73, 20], @shift.final_shift
  end
end
