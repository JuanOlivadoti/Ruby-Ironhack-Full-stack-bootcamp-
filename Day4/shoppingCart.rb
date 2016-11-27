=begin
cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50



apples     10$
oranges     5$
grapes     15$
banana     20$
watermelon 50$

=end

class Producto
	attr_reader :producto, :precio
	def initialize(producto, precio)
		@producto = producto
		@producto = precio
	end

	def show_producto
		puts @producto + @precio
	end
end

class ShoppingCart < Producto
	attr_reader :cantidad
	def initialize(cantidad)
		@cantidad = cantidad
	end

	def add_item_to_cart(add_producto, add_cantidad)
		if @producto.include(add_producto.to_sym)
			ShoppingCart.new(add_producto, @precio, add_item_to_cart)
			puts "Añadido(s) #{add_cantidad} #{add_producto}"
		else
			puts "Producto no disponible."
		end
	end
end

lista = Producto.new({
	apple: [10, 0.5],
	oranges: [5,]
	grapes: 15,
	banana: 20,
	watermelon: 50}

#{apples 10,
#	oranges: 5,
#	grapes: 15,
#	banana: 20,
#	watermelon: 50
#}

puts lista.show_producto

#carro1 = ShoppingCart.new(apple, 1)
#puts carro1
