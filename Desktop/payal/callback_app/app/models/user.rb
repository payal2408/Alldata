class User < ApplicationRecord
	# validates :login, :email, presence: true

	# before_validation :ensure_login_has_a_value

	validates :login, :email, presence: true


	before_create do 
		self.name = login.captilize if name.blank?
	end 

	private 
	# def ensure_login_has_a_value
	# 	if login.blank?
	# 		self.login = email unless email.blank?
	# 	end 
	# end
end
