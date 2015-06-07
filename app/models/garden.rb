class Garden < ActiveRecord::Base
has_one :user
has_many :user_plants , :through => :user

end
