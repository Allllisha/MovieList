class AddDateToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :date, :string
  end
end
