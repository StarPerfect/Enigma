class Enigma
  attr_reader :alphabet, :key, :date

  def initialize
    @alphabet = ('a'..'z').to_a << " "
    @key = key || Key.generate
    @date = date || Offset.generate
  end

  def encrypt(message, key, date)
    
  end
end
