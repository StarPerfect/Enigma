class Offset
  def generate
    offset = Time.new
    offset = offset.strftime("%d%m%y")
    square = offset.to_i * offset.to_i
    square.to_s[-4..-1]
  end

  def a_offset
    generate[0].to_i
  end

  def b_offset
    generate[1].to_i
  end

  def c_offset
    generate[2].to_i
  end

  def d_offset
    generate[3].to_i
  end
end
