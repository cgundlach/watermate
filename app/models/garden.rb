class Garden < ActiveRecord::Base
has_one :user
has_many :user_plants , :through => :user
has_many :plants, :through => :user_plants

end
