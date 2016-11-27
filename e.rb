for num in 1..100
	if num.include?(1)
		puts "Bang"
	
		if num % 3 == 0 && num % 5 == 0
			puts "FizzBuzz"
		elsif num % 5 == 0
			puts "Buzz"
		elsif num % 3 == 0
			puts "Fizz"	
		else
			puts num
		end
	end
end
		