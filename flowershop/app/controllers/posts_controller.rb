class PostsController < ApplicationController
	before_action :find_posts, only: [:show, :edit, :update, :destroy]
  
  def index
    @post = Post.all.order('created_at DESC')
  end

  def new
  	@post = Post.new

    # Other shit

    # @post.post_images.build
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @post}
    # end

    @post_attachment = @post.post_attachments.build
  end

  def create
  	@post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        params[:post_attachments]['mult_image'].each do |a|
          @post_attachment = @post.post_attachments.create!(:mult_image => a)
        end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render 'new' }
      end
    end
  end	

  def show
    # find_posts :show

    # some other shit I tried to do

    # @images = @post.post_images
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @post}
    # end

    @post_attachments = @post.post_attachments.all

  end

  def edit
    # find_posts :edit
    # @post.post_images.build
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
  		# params.require(:post).permit(:title, :body).permit({images: []})
      params.require(:post).permit(:title, :body, post_attachments_attributes: [:id, :post, :mult_image])
  	end
end


