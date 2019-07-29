class Message
  attr_reader :message

  def initialize(message, cipher)
    @message = message
    @cipher = cipher.cipher
  end

  def encrypt_message(message)
    message = message.downcase.chars
    encrypted = []
    index = 0
    message.map do |letter|
      if index % 4 == 0
        encrypted << @cipher[:a][letter]
      elsif index % 4 == 1
        encrypted << @cipher[:b][letter]
      elsif index % 4 == 2
        encrypted << @cipher[:c][letter]
      elsif index % 4 == 3
        encrypted << @cipher[:d][letter]
      end
      index += 1
    end
    encrypted.join
  end

  def decrypt_message(message)
    encrypt_message(message)
  end
end
