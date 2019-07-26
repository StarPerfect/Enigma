require './modules/six_digit_date'

class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def generate
    square = @date.to_i * @date.to_i
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
