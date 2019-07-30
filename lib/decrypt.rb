require './test/test_helper'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
binding.pry
output_text = enigma.decrypt(incoming_text.chomp, ARGV[2], ARGV[3])[:decryption]
writer = File.write(ARGV[1], output_text)

puts "Created #{ARGV[1]} with the cracked key #{enigma.encrypt(incoming_text.chomp)[:key]} and date #{enigma.encrypt(incoming_text.chomp)[:date]}"
