class GamesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :edit, :update]
  before_action :correct_user,   only: :destroy
  def create
    @game = current_user.games.build(game_params)
    @doggy = "this is create"
    if @game.save
      flash[:success] = "Game created!"
      redirect_to  new_game_question_path(@game.id)
    else
       @feed_items = []
      render 'static_pages/home'
    end
  end
 
  def print_game
   @game = Game.find(params[:game_id])

  end
  
  def show
    @game = Game.find(params[:id])
    @user = User.find(params[:id])
  end

  def destroy
    @game.destroy
    flash[:success] = "Game deleted"
    redirect_to request.referrer || root_url
    @doggy = "this is destroy"
  end

  def edit
   @game = Game.find(params[:id])
   @questions = @game.questions if @game.questions.any?
   @q_num = 0
  end
  
  def update
    @game = Game.find(params[:id])
    @doggy = "this is update"
    if @game.update_attributes(game_params)
      flash[:success] = "Game updated"
      redirect_to edit_game_path(@game.id)
    else
      render 'edit'
    end
  end
  
  def add
   @doggy = "added successfully"
  end
  
  private

    def game_params
      params.require(:game).permit(:game_name, :issue_area, :summary, :private_game, :id)
    end
  
    def correct_user
      @game = current_user.games.find_by(id: params[:id])
      redirect_to root_url if @game.nil?
    end
end