class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :category
      t.string :pic
      t.integer :dbw
      t.string :display_name

      t.timestamps

    end
  end
end
