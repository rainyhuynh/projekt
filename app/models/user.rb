class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # users can have many projects
  has_many :projects
  # users can have many teams...sort of. Devise limits us here.      
  has_many :teams 
end
