require './lib/to_braille'

require 'pry'; binding.pry
message_file = File.read("./lib/#{ARGV[0]}").split(//).join().chomp()
counter = message_file.length

braille = ToBraille.new(message_file)

translation_file = File.open(ARGV[1], 'w')
translation_file.puts(braille.format_message)

p "Created #{ARGV[1]} containing #{counter} characters"
