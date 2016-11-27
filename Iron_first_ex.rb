class_people = ["Victor", "Carlos", "Miguel"]

class_people.each do |persona|

	puts "Good morning, #{persona}"
end

class_people.each { |persona| puts "Good morning, #{persona}" }

Ih_class {
	"juan" => 36,
	"carlos" => 24,
	"pedro" => 41
}

Ih_class.select { |name, age| age >25 }

city_names = ["paris", "madrid", "berlin"]

city_cap = city_names.map { |city| city.capitalize }


#REDUCE

city_names = ["paris", "madrid", "berlin"]

longest = city_names.reduce do |long, city| 
	
	if city.length > long
		city
	else 
		long
	end
end

puts longest

item = :age+1