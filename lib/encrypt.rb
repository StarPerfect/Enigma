require './test/test_helper'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
output_text = enigma.encrypt(incoming_text.chomp)[:encryption]
writer = File.open(ARGV[1], 'w')
writer.write(output_text)
writer.close

puts "Created #{ARGV[1]} with the key #{enigma.encrypt(incoming_text.chomp)[:key]
} and date #{enigma.encrypt(incoming_text.chomp)[:date]}"
