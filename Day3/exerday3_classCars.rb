class CarDealer 
	attr_accessor :stock

	def initialize(inventory={}) # O sin identificar qué es lo que estoy añadiendo
		@inventory = inventory #Lista como un hash
	end

	def cars(brand)
		@inventory[brand.capitalize.to_sym]
	end

	def add_car(brand, model)
		# if inventory[brand.capitalize.to_sym]nil? #pregunta si el valor es nil. ()
		@inventory[brand.capitalize.to_sym] ||= [] #Existe el 
		@inventory[brand.capitalize.to_sym].push(model)
	end

	def print_inventory
		@inventory.each do |k,v|
			print k to_s + ": "
			#v.each do |item|
			#	print item + ": "
			puts v.join(",")
		end
	end


concesionario = CarDealer.new({
	Ford: ["Fiesta", "Mustang"],
	Honda: ["Civic", "CR-V"]
	})

puts "Introduce una marca"
brand = gets.chomp
puts concesionario.cars(brand)

concesionario.add_car("ford","Focus")
concesionario.add_car("PEUGEOT", "308")
concesionario.print_inventory