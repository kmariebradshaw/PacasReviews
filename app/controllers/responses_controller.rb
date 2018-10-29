class ResponsesController < ApplicationController
  def new 
    @response = Response.new
  end 
  def create
    @response = Response.new(response_params)
    @response.upvote  
    if @response.save
      redirect_to @response
    else
      render 'new'
    end 
  end 
  def update
    @response = Response.find(params[:id])
    @response.update(response_params)
  end 
  private 
  def response_params
      params.require(:response).permit(:vote, :description)
  end 
end
