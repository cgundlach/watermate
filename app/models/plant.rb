class Plant < ActiveRecord::Base
belongs_to :user_plants , :class_name => "User", :foreign_key => "user_plants_id"

end
