class AddActorstoMoviesPages < ActiveRecord::Migration
  def change
    add_column :movies, :actors, :string
  end
end
