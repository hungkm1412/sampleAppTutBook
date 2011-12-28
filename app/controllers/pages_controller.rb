class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Home"
  end
  
  def about
    @title = "Home"
  end
  
  def help
    @tittle = "Help"
  end
end
