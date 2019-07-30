require './test/test_helper'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
output_text = enigma.decrypt(incoming_text.chomp, ARGV[2], ARGV[3])[:decryption]
writer = File.open(ARGV[1], 'w')
writer.write(output_text)
writer.close

puts "Created #{ARGV[1]} with the cracked key #{enigma.decrypt(incoming_text.chomp, ARGV[2], ARGV[3])[:key]} and date #{enigma.decrypt(incoming_text.chomp, ARGV[2], ARGV[3])[:date]}"
