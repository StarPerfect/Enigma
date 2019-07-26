require './modules/random_five'

class Key
  attr_reader :five_digits

  def initialize(five_digits)
    @five_digits = five_digits
  end

  def get_key(index)
    (@five_digits[index] + @five_digits[index + 1]).to_i
  end

  def a_key
    get_key(0)
  end

  def b_key
    get_key(1)
  end

  def c_key
    get_key(2)
  end

  def d_key
    get_key(3)
  end
end
