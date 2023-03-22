class WelcomeController < ApplicationController
  def index
    @reviews = Review.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 250) 
    @favorited_reviews = Review.all.where(:staff_favorite => true)
    @positive = @reviews.where("rating >= ?", 4).count
    @pending_reviews = Review.all.where(:status => "pending")
    @stickies = Review.all.where(:sticky => true )
        @positive_review_count = Review.where("rating > ?", 3).count()

    @latest_reviews = Review.all.order("created_at DESC").where.not(:status => "pending").where(:staff_favorite => false)
  end
  def new
    @reviews = Review.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 250) 
    @favorited_reviews = Review.all.where(:staff_favorite => true)
    @positive = @reviews.where("rating >= ?", 4).count
    @pending_reviews = Review.all.where(:status => "pending")
    @stickies = Review.all.where(:sticky => true )
    @positive_review_count = Review.where("rating > ?", 3).count()
    @latest_reviews = Review.all.order("created_at DESC").where.not(:status => "pending").where(:staff_favorite => false)
  end 
  def show 
    @reviews = Review.all.where(:status => "approved").order("created_at DESC").limit(10)
  end 
end
