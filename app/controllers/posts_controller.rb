class PostsController < ApplicationController
	before_action :set_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, notice: 'Post was successful.'
		else
			render :new
		end
	end

	def update
		if @post.update(post_params)
			redirect_to posts_path, notice: 'POst was successful.'
		else
			render :edit
		end
	end

	def destroy
		@post.destroy

		redirect_to posts_path
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :link, :question_one, :question_two, :image_link, :tag, category_ids: [])
	end

end
