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

  def get_offset
    {
      a: generate[0].to_i,
      b: generate[1].to_i,
      c: generate[2].to_i,
      d: generate[3].to_i
    }
  end
end
