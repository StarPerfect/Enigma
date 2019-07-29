require './modules/random_five'
require './modules/six_digit_date'
require './lib/shift'
require './lib/key'
require './lib/offset'
require './lib/message'

class Enigma
  include RandomFive
  include SixDigitDate

  def encrypt(message, key = key_generate, offset = six_digit_date)
    key = Key.new(key)
    offset = Offset.new(offset)
    shift = Shift.new(key, offset)
    input = Message.new(message, shift)
    encrypted = input.encrypt_message(message)
    encrypt_hash = {
      encryption: encrypted,
      key: key.five_digits,
      date: offset.date
    }
  end

  def decrypt(message, key = key_generate, date = six_)
    #MULTIPLY FINAL_SHIFT BY -1 FOR DECRYPTION OR REVERSE ARRAY#ROTATE
  end
end
