puts "What is the source file?"

file = gets.chomp

file_contents = IO.read(file)

puts "Name the destination file"
destination = gets.chomp

IO.write(destination, file_contents)

