class Car
	def initialize(engine, car_noise)
		@car_noise = car_noise
		@engine = engine
	end

	def car_sound
		@car_noise + " " + @engine.eng_noise
	end
end

class Engine
	attr_reader :eng_noise
	def initialize(eng_noise="Vrooommm", eng_type)
		@eng_type = eng_type
		if eng_type == "diesel"
			@eng_noise = "brrrrr"
		elsif type == "electric"
			@eng_noise = "zzzzzmmmm"
		else @eng_noise = "MMMMMmmmmm"
		end
	end
end


engine1 = Engine.new("RRRoooommmm", "6.0")
engine2 = Engine.new("RRRRRrrrrrr", "1.6")
car1 = Car.new(engine1, "MMMMMmmmmm")
car2 = Car.new(engine2, "uuuuuuuuuu")

puts car1.car_sound
