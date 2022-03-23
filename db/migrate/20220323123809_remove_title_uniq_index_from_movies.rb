class RemoveTitleUniqIndexFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_index :movies, :title
  end
end
