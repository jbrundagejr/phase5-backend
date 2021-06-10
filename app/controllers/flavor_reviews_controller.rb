class FlavorReviewsController < ApplicationController

  before_action :find_flavor_review, only: [:show, :destroy]

  def show
  end

  def create
    @flavor_review = FlavorReview.create(flavor_review_params)
    render json: @flavor_reviews
  end

  def destroy
    render json: @flavor_review
    @flavor_review.destroy
  end

  private

  def flavor_review_params
    params.permit(:content, :rating, :flavor_id)
  end

  def find_flavor_review
    @flavor_review = FlavorReview.find(params[:id])
    render json: @flavor_review
  end

end
