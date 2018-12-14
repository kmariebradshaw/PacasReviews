class ReviewsController < ApplicationController
	def new 
    @review = Review.new()
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
    @reviews = Review.all.order("created_at DESC")
   respond_to do |format|
    format.html
    format.csv { send_data @reviews.to_csv, filename: "Reviews-#{Date.today}.csv" }
    end
  end 
  def update
    @review = Review.find(params[:id]) 
    @review.update(review_params)
  end 
  private 
  def review_params
      params.require(:review).permit(:text, :rating, :status, :product_id, :author_first, :author_last, :author_email)
  end 
end
