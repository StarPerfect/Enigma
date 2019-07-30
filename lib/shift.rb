require './lib/key'
require './lib/offset'

class Shift
  attr_reader :key, :offset

  def initialize(key, offset, left_or_right = 1)
    @key = key
    @offset = offset
    @left_or_right = left_or_right
  end

  def final_shift
    @key.get_keys
      .merge(@offset.get_offset) do |k, v1, v2|
      (v1 + v2) * @left_or_right
    end
  end
end
