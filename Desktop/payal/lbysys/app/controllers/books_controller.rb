class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update, :destroy]

	def index
    	@books = Book.all
  	end

  	def show
  	end

  	def new
		if student_signed_in?
	      redirect_to students_path
		else
			@book = Book.new
		end
  	end

  	def edit
		if student_signed_in?
	      redirect_to students_path
		end
  	end

  	def create
		if student_signed_in?
	      redirect_to students_path
		else
			@book = Book.new(book_params)

			  if @book.save
				redirect_to @book
			  else
				render :new 
			  end
			end
		end
	end

	def update
	    if student_signed_in?
	      redirect_to students_path
		else
			respond_to do |format|
			  if @book.update(book_params)
				redirect_to @book
			  else
				render :edit 
			  end
			end
		end
  	end

  	def destroy
		if student_signed_in?
	      redirect_to students_path
		else
			@book.destroy
			redirect_to books_url
		end
	end

	private
	
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :description, :price, :image)
  	end