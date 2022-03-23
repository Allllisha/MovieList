puts 'Clearing database...'
Movie.destroy_all
Bookmark.destroy_all


puts 'Generating movies...'
page_number = 0

loop do
  page_number += 1
  url = "https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['API_KEY']}&language=en-US&page=#{page_number.to_s}"
  
  movies = open(url).read
  movie = JSON.parse(movies)
  movie_results = movie['results']
  movie_poster = "https://image.tmdb.org/t/p/w500"

  movie_results.each do |movie|
  new_movie = Movie.create(title: movie['title'], 
                           overview: movie['overview'], 
                           poster_url: movie_poster + movie['poster_path'], 
                           rating: movie['vote_average'].to_f,
                           date: movie['release_date'], 
                           popularity: movie['popularity'])
  puts "#{new_movie.title} has been created!"
  end

if page_number == 1000
    break
  end
end

puts "#{Movie.count}"

