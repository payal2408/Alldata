class Plan < ApplicationRecord
	 has_many :userplan
  has_many :student, through: :userplan
end
