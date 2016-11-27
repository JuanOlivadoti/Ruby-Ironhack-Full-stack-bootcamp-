class Rooms
	initialize(name, description, moves_allowed, command, interaction)
		@name = name
		@description = description 
		#@moves_allowed = moves_allowed # N S E W
		@command = command #N S E W
		@interaction = interaction #WINDOWS
		@interact = interact #FELL FROM WINDOW

	def moves(move)
	end
end

class Northwest < Rooms
	@moves_allowed = ["S","E"]

	def windows
		if interaction.include("WINDOW")
			puts @interact
		else puts "Te mueves a otra sala."
		end
end

class North < Rooms
	@moves_allowed = ["W","E","S"]

	def windows
		if interaction.include("WINDOW")
			puts @interact
		else puts "Te mueves a otra sala."
		end
end

class Northeast < Rooms
	@moves_allowed = ["W","S"]

	def windows
		if interaction.include("WINDOW")
			puts @interact
		else puts "Te mueves a otra sala."
		end
end






#room1 = Rooms.new("NorthWest", "Estas en la sala NorthWest. La sala más al Noroeste del castillo. Hay ventanas al Norte y al Oeste.", [:N = "N",:S = "S",:W = "W",:E = "E"],[:N,:S,:W,:E],)
