class ChangeColumns < ActiveRecord::Migration
  def change
    remove_column :user_plants, :plant
    remove_column :user_plants, :user_id

    add_column :user_plants, :plant_id, :integer
    add_column :user_plants, :user_id, :integer
  end
end
