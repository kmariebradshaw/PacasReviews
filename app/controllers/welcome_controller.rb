class WelcomeController < ApplicationController
  def index
    @reviews = Review.all.order("created_at DESC")
    @positive = @reviews.where("rating >= ?", 4).count
    @pending_reviews = @reviews.where(:status => "pending")
    @not_pending_reviews = @reviews.where.not(:status => "pending")
  end
end
