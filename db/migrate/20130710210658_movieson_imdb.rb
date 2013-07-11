class MoviesonImdb < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.string :plot
      t.integer :mpaa_rating
      t.integer :rating, :default => 50, :limit => 100
      t.boolean :favorite, :default => false
    end
  end

  def down
    drop_table :movies
  end
end
