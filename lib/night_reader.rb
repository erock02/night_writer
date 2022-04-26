require './lib/to_original'

message_file = File.read("./lib/#{ARGV[0]}").split(//).join().gsub("\n",'')
counter = message_file.length / 6

original  = ToOriginal.new(message_file)

translation_file = File.open("./lib/#{ARGV[1]}", 'w')
translation_file.write(original.translate_message)

p "Created #{ARGV[1]} containing #{counter} characters"
