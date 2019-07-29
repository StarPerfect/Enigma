# File I/O
#ruby runner.rb input.txt output.txt

handle = File.open(ARGV[0], 'r')

incoming_text = handle.read

handle.close

output_text = incoming_text.encrypt

writer = File.open(ARGV[1], 'w')

wrtier.write(output_text)

writer.close
