require './lib/message'

message = Message.new

message_input = ARG[0]
encrypted_output = ARGV[1]

output = File.open(ARGV[0], 'w')
File.new(encrypted_output).each_line{ |line| output.puts message.encrypt(line.chomp)}

puts "Created 'encrypted.txt' with the key #{message.key} and date #{message.date}"
