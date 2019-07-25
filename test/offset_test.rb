require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_generate_offset
    assert_equal 6, @offset.generate.length
  end
end
