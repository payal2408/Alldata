class Demo < ApplicationRecord
	validates :body, presence: true

  	before_validation :normalize_name, on: :create
  	private
    def normalize_name
      self.name = name.downcase.titleize
    end

    
end
