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

  def test_attributes
    assert_equal @key, @shift.key
    assert_equal @offset, @shift.offset
  end

  def test_can_add_key_to_offset_for_final_shift
    assert_equal 3, @shift.final_shift[:a]
    assert_equal 27, @shift.final_shift[:b]
    assert_equal 73, @shift.final_shift[:c]
    assert_equal 20, @shift.final_shift[:d]

    expected = {
      a: 3,
      b: 27,
      c: 73,
      d: 20
    }

    assert_equal expected, @shift.final_shift
    assert_equal Hash, @shift.final_shift.class
  end

  def test_negative_shift
    key = mock('Key')
    key.stubs(:get_keys).returns({a: 1, b: 1, c: 1, d: 1})
    offset = mock('Offset')
    offset.stubs(:get_offset).returns({a: 2, b: 2, c: 2, d: 2})
    shift = Shift.new(key, offset, -1)

    expected = {a: -3, b: -3, c: -3, d: -3}

    assert_equal expected, shift.final_shift
  end
end
