class AnswersController < ApplicationController

  def index
    @answers = question.answers
  end

  def show
    load_answer
  end

  def new
    @answer = Answer.new
  end

  private

  def question
    @question = Question.find(params[:question_id])
  end

  def load_answer
    @answer = Answer.find(params[:id])
  end  
end
