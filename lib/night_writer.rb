require './lib/to_braille'

message_file = File.read("./lib/#{ARGV[0]}").split(//).join().chomp()
counter = message_file.length

braille = ToBraille.new(message_file)

translation_file = File.open("./lib/#{ARGV[1]}", 'w')
translation_file.puts(braille.translate)

p "Created #{ARGV[1]} containing #{counter} characters"
