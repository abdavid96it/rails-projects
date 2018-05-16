class HomeController < ApplicationController

  def index
    @posts = Post.all

    if recruiter_signed_in?
      redirect_to posts_path
      #redirect_to rails_admin.dashboard_path

    end


  end

end
