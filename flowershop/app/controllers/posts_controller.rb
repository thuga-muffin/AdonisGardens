class PostsController < ApplicationController
	before_action :find_posts, only: [:show, :edit, :update, :destroy]
 
  def index
    @post = Post.all.order('created_at DESC')
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def show
    # find_posts :show
  end

  def edit
    # find_posts :edit
  end

  def update

    # find_posts :update

  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  def destroy

    # find_posts :destory

  	@post.destroy
  	redirect_to root_path
  end
  	

  	private
    #######################
    
  	def find_posts
  		@post = Post.find(params[:id])
  	end

  	def post_params
  		params.require(:post).permit(:title, :body)
  	end
end


