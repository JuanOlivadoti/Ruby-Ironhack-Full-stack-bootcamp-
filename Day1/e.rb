for num in 1..100
	if x == (num % 3 && num % 5)
		puts FizzBuzz
	elsif x == (num % 5)
		puts Buzz
	elsif x == (num % 3)
		puts Fizz
	else
		puts num
	end
end
		