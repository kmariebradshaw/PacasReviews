class ResponsesController < ApplicationController
  def new 
    @response = Response.new
  end 
  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to @response
    else
      @questions = Question.all
      render :template => "questions/index"
    end 
  end 
  def update
    @response = Response.find(params[:id])
    @response.update(response_params)
  end 
  private 
  def response_params
      params.require(:response).permit(:vote, :description, :answer_id)
  end 
end
