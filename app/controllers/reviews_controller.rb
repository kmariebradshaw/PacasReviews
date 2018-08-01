class ReviewsController < ApplicationController
	def new 
    @review = Review.new
	end 
  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review
    else
      render 'new'
    end 
  end 
  def show
    @review = Review.find(params[:id]) 
  end 
  def index
    @reviews = Review.all 

  end 
  def update
    @review = Review.find(params[:id]) 
  end 
  private 
  def review_params
      params.require(:review).permit(:text, :rating, :status, :product_id)
  end 
end
