class UserPlant < ActiveRecord::Base
belongs_to :plant
belongs_to :user
has_many :saves


end
