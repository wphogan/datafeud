class QuestionsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :edit, :update]
  def create
     @game = Game.find(params[:game_id])
      @question = @game.questions.build(question_params)
    if @question.save
      flash[:success] = "Question created!"
      redirect_to edit_game_question_path(@game, @question)
    else
      flash[:danger] = "Your question cannot be blank."
      redirect_to(:back)
    end
  end
  
  def index
    @game = Game.find(params[:game_id])
    @questions = Question.where(:game_id => params[:game_id])
    @question = @game.questions
  end
  
  def show
    @questions = Question.where(:game_id => params[:game_id])
    @game = Game.find(params[:game_id])
    @question = @game.questions.find(params[:id])
  end
  
  def finish_game
    @game = Game.find(params[:game_id])
    @question = @game.questions
    @questions = Question.where(:game_id => params[:game_id])
  end

  def destroy
    @game = Game.find(params[:game_id])
    @question = @game.questions.find(params[:id])
    @question.destroy
    flash[:success] = "Question deleted"
    redirect_to edit_game_path(@game.id)
  end

  def new
    @game = Game.find(params[:game_id])
    @question = Question.new
  end

  def edit
    @doggy = "question edit"
    @game = Game.find(params[:game_id])
    @question = @game.questions.find(params[:id])
  end
  

  def update
    @game = Game.find(params[:game_id])
    @question = @game.questions.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:success] = "Question updated"
      redirect_to edit_game_path(@game.id)
    else
      render 'edit'
    end

  end
  
  
  private
    def question_params
      params.require(:question).permit(:content, :game_id, :id, :answer1, :answer2,:answer3,:answer4,:answer5,:answer6,:answer7,:answer8)
    end
    
    
  
end