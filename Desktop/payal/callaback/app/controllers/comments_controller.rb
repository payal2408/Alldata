class CommentsController < ApplicationController
	def create
	    @student = Student.find(params[:student_id])
	    @comment = @student.comments.create(comment_params)
	    redirect_to student_path(@student)
  	end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
