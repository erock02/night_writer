message_file = File.read("./lib/#{ARGV[0]}").split(' ').join()
counter = message_file.length
p "Created #{ARGV[1]} containing #{counter} characters"

translation_file = File.open(ARGV[1], 'w')
translation_file.write(message_file)
