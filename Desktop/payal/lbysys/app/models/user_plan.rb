class UserPlan < ApplicationRecord
  belongs_to :plan
  belongs_to :student
end
