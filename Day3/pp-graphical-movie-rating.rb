require 'imdb'
require 'colorize'
require 'pry'

file = 'movies.txt'
array_movies = []

File.open(file, 'r') do |f|
  f.each_line do |l|
    search = Imdb::Search.new(l.delete("\n"))
    array_movies.push(Imdb::Movie.new(search.movies[0].id))
  end
end

array_movies.each do |m|
  #puts "#{m.id} #{m.title} #{m.rating}"
  puts m.rating
  (m.rating.to_i).times do |i|
    print '|'
  end
  print "\n"

end
