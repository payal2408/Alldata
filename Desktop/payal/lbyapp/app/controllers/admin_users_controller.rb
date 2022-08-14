class AdminUsersController < ApplicationController
   def show_books
    	@books = Book.all
   end
end
