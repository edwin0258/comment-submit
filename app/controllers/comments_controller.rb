class CommentsController < ApplicationController
	before_action :all_comments, only: [:index, :create]
	respond_to :html, :js
	def new
		@comment = Comment.new
	end
	def create
		@comment = Comment.create(comment_params)
	end

	private
		def all_comments
			@comment = Comment.all
		end
		def comment_params
			params.require(:comment).permit(:content)
		end
end