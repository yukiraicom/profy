class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id

  #5行目のプロパティについてはhttp://melborne.github.io/2012/09/11/understand-ruby-oop-with-js-brain/ を参照
  end
end
