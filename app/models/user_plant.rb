class UserPlant < ActiveRecord::Base
belongs_to :garden
belongs_to :user

end
