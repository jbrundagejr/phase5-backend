class ReviewsController < ApplicationController
  
  before_action :authorized, only: [:create, :destroy]

  def create
    @review = @user.reviews.create(review_params)
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    render json: @review
    review.destroy
  end

  private

  def review_params
    params.permit(:content, :rating, :shop_id)
  end

end
