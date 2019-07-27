class Message
  attr_reader :message, :shift, :alphabet

  def initialize(message, shift)
    @message = message
    @shift = shift
    @alphabet = ('a'..'z').to_a << " "
    @a_cipher = a_cipher
    @b_cipher = self.b_cipher
    @c_cipher = self.c_cipher
    @d_cipher = self.d_cipher
  end

  def a_cipher
    a_cipher_hash = Hash.new
    a_cipher_array = @alphabet.rotate(@shift[0])
    @alphabet.each{ |char| a_cipher_hash[char] = a_cipher_array[@alphabet.index(char)]}
    a_cipher_hash
  end

  def b_cipher
    b_cipher_hash = Hash.new
    b_cipher_array = @alphabet.rotate(@shift[0])
    @alphabet.each{ |char| b_cipher_hash[char] = b_cipher_array[@alphabet.index(char)]}
    b_cipher_hash
  end

  def c_cipher
    c_cipher_hash = Hash.new
    c_cipher_array = @alphabet.rotate(@shift[0])
    @alphabet.each{ |char| c_cipher_hash[char] = c_cipher_array[@alphabet.index(char)]}
    c_cipher_hash
  end

  def d_cipher
    d_cipher_hash = Hash.new
    d_cipher_array = @alphabet.rotate(@shift[0])
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

  def encrypt(message)
    message = message.chars
    encrypted = message.map do |letter|
      if message.index(letter)%4 == 0
        a_letter_conversion(letter)
      elsif message.index(letter)%4 == 1
        b_letter_conversion(letter)
      elsif message.index(letter)%4 == 2
        c_letter_conversion(letter)
      else
        d_letter_conversion(letter)
      end
    end
    encrypted.join.to_s
  end
end
