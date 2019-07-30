require './test/test_helper'

class Enigma
  include RandomFive
  include SixDigitDate

  def encrypt(message, key = key_generate, offset = six_digit_date)
    encrypt_key = Key.new(key)
    encrypt_offset = Offset.new(offset)
    shift = Shift.new(encrypt_key, encrypt_offset)
    cipher = Cipher.new(shift)
    input = Message.new(message, cipher)
    encrypted = input.encrypt_message(message)
    {encryption: encrypted, key: encrypt_key.five_digits, date: encrypt_offset.date}
  end

  def decrypt(message, key, date = six_digit_date)
    decrypt_key = Key.new(key)
    decrypt_offset = Offset.new(date)
    shift = Shift.new(decrypt_key, decrypt_offset, -1)
    cipher = Cipher.new(shift)
    input = Message.new(message, cipher)
    decrypted = input.decrypt_message(message)
    {decryption: decrypted, key: decrypt_key.five_digits, date: decrypt_offset.date}
  end
end
