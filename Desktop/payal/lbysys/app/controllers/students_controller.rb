class StudentsController < ApplicationController
  before_action :authenticate_student!
	  def index
	  	@plans = Plan.all
	  end

	  private
	    def fav_plan_ids
    		current_student.user_plans.pluck(:plan_id)
  		end
end
