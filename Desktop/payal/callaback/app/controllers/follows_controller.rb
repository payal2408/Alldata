class FollowsController < ApplicationController
	 before_action :find_post
	  def create
	    @supplier.follows.create(user_id: current_user.id)
	    redirect_to supplier_path(@supplier)
	  end
	  private
	  def find_post
	    @supplier = Supplier.find(params[:supplier_id])
	  end

end
