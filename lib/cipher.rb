class Cipher
  attr_reader :alphabet, :shift

  def initialize(shift)
    @alphabet = ('a'..'z').to_a << " "
    @shift = shift.final_shift
  end

  def cipher
    shift.map do |letter, num|
      shifted = Hash.new
      array = @alphabet.rotate(num)
      @alphabet.each do |char|
        shifted[char] = array[@alphabet.index(char)]
      end
      [letter, shifted]
    end.to_h
  end
end
