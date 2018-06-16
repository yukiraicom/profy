class AnswersController < ApplicationController

  before_action :redirect, only: :new

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id

  #5行目のプロパティについてはhttp://melborne.github.io/2012/09/11/understand-ruby-oop-with-js-brain/ を参照
  end

  def create
    @answer = Answer.create(create_params)
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def update
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @answer.update(update_params)
  end

  private
  def create_params
    params.require(:answer).permit(:question_id, :text).merge(user_id: current_user.id)
  end

  def redirect
    if Answer.exists?(question_id: params[:question_id], user_id: current_user.id)
      redirect_to :root
    end
  end
end
