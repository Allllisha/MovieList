require 'rest-client'

mv = RestClient.get "http://tmdb.lewagon.com/movie/top_rated"

mv_array = JSON.parse(mv)["results"]

  mv_array.each do |movie|
    Movie.create(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie["poster_path"]}",
    rating: movie["vote_average"]
    )
   end

