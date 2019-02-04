class PostsController < ApplicationController

	before_action :find_posts, only: [:index]
	before_action :find_post, only: [:show, :edit, :update]

	def index
	end

	def show
	end

	def new
		@post = Post.new
		@categories = Category.all
	end

	def create
		post = Post.create(params[:post])
		redirect_to post_path(post)
	end

	def edit
		@categories = Category.all
	end

	def update
		@post.update(params.require(:post))
		redirect_to post_path(@post)
	end

	private 

	def find_post
		@post = Post.find(params[:id])
	end 

	def find_posts
		@posts = Post.all
	end 


end
