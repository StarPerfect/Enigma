class Message
  attr_reader :message

  def initialize(message, cipher)
    @message = message
    @cipher = cipher
  end

  def encrypt_message(message)
    message = message.downcase.chars
    encrypted = []
    index = 0
    message.map do |letter|
      binding.pry
      if !@cipher.alphabet.include?(letter)
        encrypted << letter
      elsif index % 4 == 0
        encrypted << @cipher.cipher[:a][letter]
      elsif index % 4 == 1
        encrypted << @cipher.cipher[:b][letter]
      elsif index % 4 == 2
        encrypted << @cipher.cipher[:c][letter]
      elsif index % 4 == 3
        encrypted << @cipher.cipher[:d][letter]
      end
      index += 1
    end
    encrypted.join
  end

  def decrypt_message(message)
    encrypt_message(message)
  end
end
