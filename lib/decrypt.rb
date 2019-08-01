require './test/test_helper'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
decrypt_hash = enigma.decrypt(incoming_text.chomp, ARGV[2], ARGV[3])
writer = File.write(ARGV[1], decrypt_hash[:decryption])

puts "Created #{ARGV[1]} with the cracked key #{decrypt_hash[:key]} and date #{decrypt_hash[:date]}"
