class AddPosterUrlToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :poster_url, :text
  end
end
