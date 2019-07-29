require './lib/enigma'
require './lib/shift'
require './lib/key'
require './lib/offset'
require './lib/message'
require 'pry'

enigma = Enigma.new
handle = File.open(ARGV[0], 'r')
incoming_text = handle.read
output_text = enigma.decrypt(incoming_text.chomp)[:decryption]
writer = FIle.open(ARGV[1], 'w')
writer.write(output_text)
writer.close

puts "Created #{ARGV[1]} with the cracked key #{enigma.decrypt(incoming_text.chomp)[:key]
} and date #{enigma.decrypt(incoming_text.chomp)[:date]}"
