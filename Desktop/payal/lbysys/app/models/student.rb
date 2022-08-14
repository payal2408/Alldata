class Student < ApplicationRecord
   has_many :userplan
  has_many :plan, through: :userplan
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
end
