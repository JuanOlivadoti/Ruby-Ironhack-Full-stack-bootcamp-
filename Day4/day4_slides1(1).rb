=begin

Forma sencilla de hacerlo

puts "Enter your username"
username = gets.chomp
puts "Enter your password"
password = gets chomp

if username == "Harek" && password "secret"
	puts "Type in some text"
	text = gets.chomp
	puts "Your text has #{text.split(" ").length} words"
else
	puts "Incorrect username or password"
end


puts "Enter your username"
username = gets.chomp
puts "Enter your password"
password = gets chomp
=end

if User.new.login
	puts "Type in some text"
	text = gets.chomp
	puts "Your text has #{WordCounter.count(text)} words"
else 
	puts "Incorrect username or password"
end


class Authenticator
	def self.authenticate(username, password)
		if username == "Harek" && password == "secret"
			true
		else false
		end
	end
end

class User 
	def login
		puts "Enter your username"
		username = gets.chomp
		puts "Enter your password"
		password = gets chomp
		while Authenticator.authenticate(username, password)
			puts "Type in some text"
			text = gets.chomp
			puts "Your text has #{WordCounter.count(text)} words"
		end
	end
end




class WordCounter
	self.count(text)
	text.split(" ").length
end


