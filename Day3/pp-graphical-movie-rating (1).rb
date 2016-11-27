require 'imdb'

file = 'movies.txt'
array_movies = []

File.open(file, 'r') do |f|
  f.each_line do |l|
    search = Imdb::Search.new(l.delete("\n"))
    array_movies.push(Imdb::Movie.new(search.movies[0].id))
  end
end

#ratings
array_movies.each do |m|
  (m.rating.to_i).times do |i|
    print '|'
  end
  print "\n"
end

puts '---------------'
array_movies.length.times do |i|
  print "|#{i}"
end
print "|\n\n"

#titles
count = 1
array_movies.each do |m|
  puts "#{count}. #{m.title}"
  count += 1
end
