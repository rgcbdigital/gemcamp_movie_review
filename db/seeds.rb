genres = ['Action', 'Comedy', 'Drama', 'Horror', 'Romance', 'Sci-Fi', 'Thriller']

genres.each do |genre|
  Genre.find_or_create_by(name: genre)
end