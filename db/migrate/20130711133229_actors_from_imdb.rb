class ActorsFromImdb < ActiveRecord::Migration
  def up
    create_table :actors do |t|
      t.string :name
    end
  end

  def down
    drop_table :actors
  end
end
