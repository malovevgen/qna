class AnswersController < ApplicationController
  before_action :load_answer, only: :show

  def index
    @answers = question.answers
  end

  private

  def question
    @question = Question.find(params[:question_id])
  end

  def load_answer
    @answer = Answer.find(params[:id])
  end  
end
