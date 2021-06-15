class FlavorReviewsController < ApplicationController

  before_action :authorized, only: [:create, :destroy]

  def create
    @flavor_review = @user.flavor_reviews.create(flavor_review_params)
    render json: @flavor_review
  end

  def destroy
    @flavor_review = FlavorReview.find(params[:id])
    render json: @flavor_review
    @flavor_review.destroy
  end

  private

  def flavor_review_params
    params.permit(:content, :rating, :flavor_id)
  end

end
