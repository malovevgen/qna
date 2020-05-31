class AnswersController < ApplicationController

  before_action :answers, only: [:index, :create] 

  def index
    @answers = answers # question.answers
  end

  def show
    load_answer
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = answers.create(answer_params)
  end

  private

  def question
    @question = Question.find(params[:question_id])
  end

  def load_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end

  def answers
    question.answers
  end 
end
