class PagesController < ApplicationController
  def home
  	@post = Post.all.order('created_at DESC')
  end

  def features
  end

  def about
  end

  def contact
  end
end
