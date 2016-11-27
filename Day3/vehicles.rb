class Truck
  attr_reader :noise, :wheels

  def initialize
    @wheels = 16
    @noise = "BROOOOOOOOOOOM"
  end

end

class Bike
  attr_reader :noise, :wheels

  def initialize
    @wheels = 2
    @noise = "ñecñecñec"
  end
end

class Car
  attr_reader :noise, :wheels

  def initialize
    @wheels = 4
    @noise = "brrrrr"
  end
end

class MotorBike
  attr_reader :noise, :wheels

  def initialize
    @wheels = 2
    @noise = "brrrrrrmmmmm"
  end
end


class WheelCounter
  def self.count_wheels(vehicles)
    vehicles.reduce(0) do |sum, item|
      sum + item.wheels
    end
  end
end

class NoisePrinter
  def self.print_noises(vehicles)
    vehicles.reduce("") do |sum, item|
      sum + item.noise + " "
    end
  end
end


vehicles = [ Truck.new, Bike.new, MotorBike.new]
puts WheelCounter.count_wheels(vehicles)
puts NoisePrinter.print_noises(vehicles)
