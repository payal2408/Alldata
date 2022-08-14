class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :destroy]

  def index
  	@users = User.all
  end

  def show; end

  def new; end

  def create
    @user = user.new(user_params)
    if @user.save 
      redirect_to @user
    else
      render :new
    end
  end

  def edit; end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end 
  end

  def destroy
    if @user.destroy
      redirect_to users_path
    end
  end

  private

  def set_user
  	@user = User.find(params[:id])  	
  end

  def user_params
  	params.require(:user).permit(:name, :login, :email, :description)
  end
end
