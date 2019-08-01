require './test/test_helper'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
writer = File.open(ARGV[1], 'w')
enc = enigma.encrypt(incoming_text.chomp, ARGV[2], ARGV[3])
writer.write(enc[:encryption])
writer.close

puts "Created #{ARGV[1]} with the key #{enc[:key]} and date #{enc[:date]}"
