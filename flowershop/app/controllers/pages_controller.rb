class PagesController < ApplicationController
  def home
  	@post = Post.limit(3).order('created_at DESC')
  end

  def features
  end

  def about
  end

  def contact
  end
end
