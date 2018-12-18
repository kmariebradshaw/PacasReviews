class WelcomeController < ApplicationController
  def index
    @reviews = Review.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 250) 
    @favorited_reviews = Review.all.where(:staff_favorite => true)
    @positive = @reviews.where("rating >= ?", 4).count
    @pending_reviews = Review.all.where(:status => "pending")
  end
end
