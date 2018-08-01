class WelcomeController < ApplicationController
  def index
    @reviews = Review.all 
    @positive = @reviews.where("rating >= ?", 4).count
    @pending_reviews = @reviews.where("status", "pending")
  end
end
