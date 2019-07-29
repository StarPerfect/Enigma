require './modules/random_five'
require 'pry'

class Key
  attr_reader :five_digits

  def initialize(five_digits)
    @five_digits = five_digits
  end

  def get_keys
    {
      a: five_digits[0..1].to_i,
      b: five_digits[1..2].to_i,
      c: five_digits[2..3].to_i,
      d: five_digits[3..4].to_i
    }
  end
end
