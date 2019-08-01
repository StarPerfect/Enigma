require './test/test_helper'

class Enigma
  def encrypt(message, key = nil, offset = nil)
    key_obj = Key.new(key)
    offset_obj = Offset.new(offset)
    binding.pry
    shift = Shift.new(key_obj, offset_obj)
    cipher = Cipher.new(shift)
    input = Message.new(message, cipher)
    encrypted = input.encrypt_message(message)
    {encryption: encrypted, key: key_obj.five_digits, date: offset_obj.date}
  end

  def decrypt(message, key, date = six_digit_date)
    decrypt_key = Key.new(key)
    decrypt_offset = Offset.new(date)
    binding.pry
    shift = Shift.new(decrypt_key, decrypt_offset, -1)
    cipher = Cipher.new(shift)
    input = Message.new(message, cipher)
    decrypted = input.decrypt_message(message)
    {decryption: decrypted, key: decrypt_key.five_digits, date: decrypt_offset.date}
  end
end
