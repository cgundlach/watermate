class CreateUserPlants < ActiveRecord::Migration
  def change
    create_table :user_plants do |t|
      t.string :user_id
      t.integer :days
      t.string :thirst
      t.string :plant
      t.boolean :water

      t.timestamps

    end
  end
end
