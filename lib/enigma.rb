class Enigma
  include RandomFive
  include SixDigitDate

  attr_reader :key, :date

  def initialize
    @message = Message.new
    @key = key #|| key_generate
    @date = date #|| six_digit_date
  end

  def encrypt(message, key = key_generate, date = six_digit_date)
    encrypt_hash = {encryption: @message, key: @key, date: @date}
  end

  def decrypt(message, key = key_generate, date = six_digit_date)
    #MULTIPLY FINAL_SHIFT BY -1 FOR DECRYPTION OR REVERSE ARRAY#ROTATE
  end
end
