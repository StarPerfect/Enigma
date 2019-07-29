require './test/test_helper'

class Enigma
  include RandomFive
  include SixDigitDate

  def encrypt(message, key = key_generate, offset = six_digit_date)
    key = Key.new(key)
    offset = Offset.new(offset)
    shift = Shift.new(key, offset)
    cipher = Cipher.new(shift)
    input = Message.new(message, cipher)
    encrypted = input.encrypt_message(message)
    details = {encryption: encrypted, key: key.five_digits, date: offset.date}
  end

  def decrypt(message, key = key_generate, date = six_digit_date)
    key = Key.new(key)
    offset = Offset.new(offset)
    shift = Shift.new(key, offset, -1)
    shift = shift.final_shift
    input = Message.new(message, shift)
    decrypted = input.decrypt_message(message)
    details = {decryption: decrypted, key: key.five_digits, date: offset.date}
  end
end
