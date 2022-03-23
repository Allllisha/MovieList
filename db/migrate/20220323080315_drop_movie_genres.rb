class DropMovieGenres < ActiveRecord::Migration[6.0]
  def change
    drop_table :movie_genres
  end
end
