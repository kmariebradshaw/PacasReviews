class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @answer.question
    else
      render @answer.question
    end 
  end 
  def edit
    @answer = Answer.find(params[:id])
  end 
  def update
    @answer = Answer.find(params[:id])

    if @answer.update(answer_params)
      redirect_to @answer.question
    else 
      render 'edit'
    end 
  end 

def destroy
  @answer = Answer.find(params[:id])
  @answer.destroy
 
  redirect_to @answer.question
end
  private 
  def answer_params
      params.require(:answer).permit(:text, :vote, :question_id, :response)
  end 
end 