class Plant < ActiveRecord::Base
belongs_to :user_plants , :class_name => "User", :foreign_key => "user_plants_id"

has_and_belongs_to_many :gardens

end
