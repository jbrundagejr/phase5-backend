class ShopsController < ApplicationController

  before_action :find_shop, only: [:show]
  
  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
  end

  private

  def find_shop
    @shop = Shop.find(params[:id])
    render json: @shop
  end

end
