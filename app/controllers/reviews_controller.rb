class ReviewsController < ApplicationController

  def show
    @reviews = Reviews.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @review = Reviews.new(review_params)
    @review.save
    redirect_to reviews_path(@review)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
