class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @actual_role  = current_user.actual_roles.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
