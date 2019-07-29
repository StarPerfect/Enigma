class Message
  attr_reader :message, :alphabet, :shift

  def initialize(message, shift)
    @message = message
    @alphabet = ('a'..'z').to_a << " "
    @shift = shift.final_shift
    @a_cipher = a_cipher(shift)
    @b_cipher = b_cipher(shift)
    @c_cipher = c_cipher(shift)
    @d_cipher = d_cipher(shift)
  end

  def a_cipher(shift)
    a_cipher_hash = Hash.new
    a_cipher_array = @alphabet.rotate(@shift[:a])
    @alphabet.each{ |char| a_cipher_hash[char] = a_cipher_array[@alphabet.index(char)]}
    a_cipher_hash
  end

  def b_cipher(shift)
    b_cipher_hash = Hash.new
    b_cipher_array = @alphabet.rotate(@shift[:b])
    @alphabet.each{ |char| b_cipher_hash[char] = b_cipher_array[@alphabet.index(char)]}
    b_cipher_hash
  end

  def c_cipher(shift)
    c_cipher_hash = Hash.new
    c_cipher_array = @alphabet.rotate(@shift[:c])
    @alphabet.each{ |char| c_cipher_hash[char] = c_cipher_array[@alphabet.index(char)]}
    c_cipher_hash
  end

  def d_cipher(shift)
    d_cipher_hash = Hash.new
    d_cipher_array = @alphabet.rotate(@shift[:d])
    @alphabet.each{ |char| d_cipher_hash[char] = d_cipher_array[@alphabet.index(char)]}
    d_cipher_hash
  end

def a_letter_conversion(letter)
  if @alphabet.include?(letter)
    @a_cipher[letter]
  else
    letter
  end
end

def b_letter_conversion(letter)
  if @alphabet.include?(letter)
    @b_cipher[letter]
  else
    letter
  end
end

def c_letter_conversion(letter)
  if @alphabet.include?(letter)
    @c_cipher[letter]
  else
    letter
  end
end

def d_letter_conversion(letter)
  if @alphabet.include?(letter)
    @d_cipher[letter]
  else
    letter
  end
end

  def encrypt_message(message)
    message = message.downcase.chars
    encrypted = []
    index = 0
    message.map do |letter|
      if index % 4 == 0
        encrypted << a_letter_conversion(letter)
      elsif index % 4 == 1
        encrypted <<  b_letter_conversion(letter)
      elsif index % 4 == 2
        encrypted <<  c_letter_conversion(letter)
      elsif index % 4 == 3
        encrypted << d_letter_conversion(letter)
      end
      index += 1
    end
    encrypted.join
  end
end
