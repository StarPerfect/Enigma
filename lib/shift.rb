require './lib/key'
require './lib/offset'

class Shift
  attr_reader :key, :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def final_shift
    final_shift = @key.get_keys.merge(@offset.get_offset){ |k, v1, v2| v1 + v2 }
  end
end
