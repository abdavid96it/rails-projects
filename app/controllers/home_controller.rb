class HomeController < ApplicationController

  def index
    @posts = Post.all

    if recruiter_signed_in?
      redirect_to posts_path
    end
  end

end
