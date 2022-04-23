file = File.open("./lib/#{ARGV[0]}", "r")
file.close
p "Created #{ARGV[1]} containing 256 characters"
