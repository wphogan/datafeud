class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @game  = current_user.games.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @questions = Question.where(:game_id => params[:game_id])
    end
  end
  
  def how_to
  end
  
  def about
  end
  
  def contact
  end
  
end
