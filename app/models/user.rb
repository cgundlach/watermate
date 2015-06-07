class User < ActiveRecord::Base

  has_many :user_plants , :class_name => "UserPlant", :foreign_key => "user_plants_id"
  has_many :gardens


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

