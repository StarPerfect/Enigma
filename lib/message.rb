class Message
  attr_reader :message, :shift, :alphabet

  def initialize(message, shift)
    @message = message
    @shift = shift
    @alphabet = ('a'..'z').to_a << " "
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

  def encrypt

  end

  def decrypt

  end
end
