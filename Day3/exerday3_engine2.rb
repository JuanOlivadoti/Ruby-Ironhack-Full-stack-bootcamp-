class Car
	attr_reader :engine, :car_noise, :wheels
	def initialize(engine, car_noise)
		@car_noise = car_noise
		@engine = engine
		@wheels = 4
	end

	def car_sound
		@car_noise + " " + @engine.eng_noise
	end
end

class Truck
	attr_reader :engine, :car_noise, :wheels
	def initialize(engine, car_noise)
		@car_noise = car_noise
		@engine = engine
		@wheels = 16
	end

	def car_sound
		@car_noise + " " + @engine.eng_noise
	end
end

class WheelCounter
	def self.count_wheels(vehicles) #self. lo hace un metodo de clase
		vehicles.reduce(0) do |sum, item|
			sum + item.wheels
		end
	end

end

class Sound
	def self.count_wheels(vehicles) #self. lo hace un metodo de clase
		vehicles.reduce("") do |sum, item|
			sum + item.car_noise
		end
	end
end



class Engine
	attr_reader :eng_noise
	def initialize(eng_type, eng_noise="Vrooommm")
		@eng_type = eng_type
		if eng_type == "diesel"
			@eng_noise = "brrrrr"
		elsif @eng_type == "electric"
			@eng_noise = "zzzzzmmmm"
		else @eng_noise = "MMMMMmmmmm"
		end
	end
end


engine1 = Engine.new("diesel")
engien2 = Engine.new("electric")
car1 = Car.new("diesel", "MMMMMmmmmm")
car2 = Car.new("electric", "uuuuuuuuuu")

puts car1.car_sound

vehicles = [Truck.new, Car.new]
puts WheelCounter.count_wheels(vehicles)
Sound.print_noises(vehicles)