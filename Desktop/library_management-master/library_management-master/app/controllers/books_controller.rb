class BooksController < ApplicationController
before_action :authenticate_secure!
  
  def index 
         
     @books = Book.all
  end

  def subscribe_plan
    @plans = Plan.all 
  end 
   

  def show
    @book = Book.find(params[:id])
    #@plan = Plan.find(params[:id])
  end


  def update_subscription_plan
   # @plan = Plan.find(params[:plan_id])
   
    if @book.update(book_params)
      redirect_to @books
    else
       render :subscription_plan
    end   

    #   @plans.id = user.Plan.all 
    # end 
   def select_plan

   end
  


   def book_params
    params.require(:book).permit(:title, :author, :discription, :image, :plane_id
   end   
  #  if @plan = Plan.find(params[:id])
  #   redirect_to @books
  #  else
  #   render :subscription_plan
  #  end
  # end
end