class User < ActiveRecord::Base

  has_many :user_plants
  has_many :plants, :through => :user_plants
  has_many :saves, :through => :user_plants


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

