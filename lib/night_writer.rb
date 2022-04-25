file = File.read("./lib/#{ARGV[0]}").split(' ')
counter = file.length
p "Created #{ARGV[1]} containing #{counter} characters"
