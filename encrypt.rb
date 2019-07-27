require './lib/message'

enigma = Enigma.new

message_input = ARG[0]
encrypted_output = ARGV[1]

output = File.open(ARGV[0], 'w')
File.new(encrypted_output).each_line{ |line| output.puts enigma.encrypt(message_input)}

puts "Created 'encrypted.txt' with the key #{message.key} and date #{message.date}"
