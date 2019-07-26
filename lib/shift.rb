class Shift
  attr_reader :key, :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def a
    @key.a_key + @offset.a_offset
  end

  def b
    @key.b_key + @offset.b_offset
  end

  def c
    @key.c_key + @offset.c_offset
  end

  def d
    @key.d_key + @offset.d_offset
  end
end
