class CommentsController < ApplicationController

	def create
		@artical = Artical.find(params[:artical_id])
		@comment = @artical.comments.new(comment_params)
		@comment.save
		redirect_to artical_path(@artical)
	end
	private def comment_params
		params.require(:comment).permit(:body)
	end
end

=begin
	
rescue Exception => e
	def create
		@comment = Comment.new(comment_params)
		@comment.artical_id = params[:artical_id]
		@comment.save
		redirect_to artical_path(@comment.artical)
	end
	private def comment_params
		params.require(:comment).permit(:body)
	end
=end
