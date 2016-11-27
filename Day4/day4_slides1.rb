enter_user

class Username
	attr_reader :user, :pass
	def initialize (user, pass)
		@user = user
		@pass = pass
	end

	def enter_user
		puts "Enter your username"
		user = gets.chomp
		puts "Enter your password"
		pass = gets chomp
	end
end

class Check_Uername
	def check_u
		if user == usernames.bsearch{ |u| u == user}
			puts "ok"
			pass.check_p
		else puts "Incorrect Username"
		end
	end

	def check_p
		if pass == usernames.bsearch{ |u| u == pass}
			puts "ok"
		else puts "Incorrect password"
		end
	end
end

usernames = Username.new("Juan", 1234)
