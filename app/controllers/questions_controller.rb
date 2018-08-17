class QuestionsController < ApplicationController
  def index
    @questions = Question.all 
  end 
  def new 
    @question = Question.new
  end 
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end 
  end 
  def show
    @question = Question.find(params[:id]) 
    @answer = Answer.new 
  end 
  def update
    @question = Question.find(params[:id]) 
    @question.update(question_params)
  end 
  private 
  def question_params
      params.require(:question).permit(:text, :response_type)
  end 
end 