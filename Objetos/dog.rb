class Dog

	attr_accessor :name, :breed #lee y cambia nombre y raza
	attr_writer(:sound) #cambia el sonido

	def initialize ( name, breed, sound="Wooof! ") #	def initialize ( name="Toby", breed, sound="Wooof! ") No es posible poner el primero por DEFAULT (tira error)
		@name = name
		@breed = breed
		@sound = sound #(@soud disponible para todas las instancias del programa)
		@@number_of_dogs ||= 0
		@@number_of_dogs += 1
			#variable de clase que aumenta en 1
	end

=begin	def bark
		sound = "Wooof! Wooof!"
		puts sound
	end

	def berserk
		puts sound + sound + sound
	end
	# No funciona por estar fuera del metodo 
=end
	def bark 
		puts @sound
	end

	def berserk
		puts @sound + @sound + @sound
	end
	# @sound disponible para el resto de los metodos 

	def self.number_of_dogs #class.method
		puts @@number_of_dogs
	end

	def track
		puts "Snif"
	end

	def name
		@name
	end

end

p1 = Dog.new("Dwayne", "Pitbull", "Booof")
p2 = Dog.new("Toby", "Lab")
p3 = Dog.new("Oscar", "Boxer")

p1.bark

p2.berserk

#p2.number_of_dogs


class Hound < Dog #Clase hija de Dog

	attr_accessor :animal

	def initialize (name, breed, sound, animal)
		super(name, breed, sound)
		@animal = animal
		#agrego un atributo más en la clase hija.
	end

	def roll
		puts "Roll.. Roll.. Roll"
	end

	def track
		puts "sniff sniff "
		super
	end

end

class PetDog < Dog

	attr_accessor :owner

	def initialize (name, breed, sound, owner, fetch)
		super(name, breed, sound)
		@owner = owner
	end

	def fetch(toy)
		puts "*drops #{toy}*... #{@sound} #{bark}"
		bark
		bark
	end

	def dog_atrib
		puts "#{@name} #{@breed} #{@sound}"
	end

end



pet1=PetDog.new("pip", "Chiwawa", "jip", "Pedro", "stick")
h1=Hound.new("Scooby", "Great", "Bark", "fox")

pet1.fetch("ball")

p2.bark
p1.track

h1.roll
h1.track


puts pet1.owner  #Sin Puts no imprime
pet1.owner = "new owner"
puts pet1.owner

#Clases siempre comienzan con MAYUSCULA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#sin definir el @sound en initialize

=begin
	def bark 
		puts @sound
		berserk
	end

	def berserk
		puts @sound + @sound + @sound
	end
=end

