class Enigma
  include RandomFive
  include SixDigitDate

  def encrypt(message, key, date)
    key = key || key_generate
    date = date || six_digit_date
    shift = Shift.new(key, date)
    input = Message.new(message, shift.final_shift)

    encrypted = input.encrypt
    encrypt_hash = {encryption: encrypted, key: key, date: date}
  end

  def decrypt(message, key = key_generate, date = six_)
    #MULTIPLY FINAL_SHIFT BY -1 FOR DECRYPTION OR REVERSE ARRAY#ROTATE
  end
end
