class Enigma
  include RandomFive
  include SixDigitDate
  attr_reader :alphabet#, :key, :date

  def initialize
    @alphabet = ('a'..'z').to_a << " "
    # @key = key || key_generate
    # @date = date || six_digit_date
  end

  def encrypt(message, key = key_generate, date = six_digit_date)

  end
end
