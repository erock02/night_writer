message_file = File.read("./lib/#{ARGV[0]}")
counter = message_file.length

translation_file = File.open("./lib/#{ARGV[1]}", 'w')
translation_file.write(message_file)

p "Created #{ARGV[1]} containing #{counter} characters"
