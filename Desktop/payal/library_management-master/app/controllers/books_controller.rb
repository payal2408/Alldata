class BooksController < ApplicationController
  
 before_action :authenticate_secure!
  


  def index
     @books = Book.all
  end


  def show
    @book = Book.find(params[:id])
  end
end
