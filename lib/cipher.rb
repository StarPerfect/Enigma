class Cipher
  attr_reader :alphabet, :shift

  def initialize(shift)
    @alphabet = ('a'..'z').to_a << " "
    @shift = shift.final_shift
  end

  def cipher
    shift.map do |shift|
      shifted = Hash.new
      array = @alphabet.rotate(shift[1])
      @alphabet.each do |char|
        shifted[char] = array[@alphabet.index(char)]
      end
      [shift[0], shifted]
    end.to_h
  end
end
