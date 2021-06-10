class FlavorsController < ApplicationController

  before_action :find_flavor, only: [:show]
  
  def index
    @flavors = Flavor.all
    render json: @flavors
  end

  def show
  end
  
  private

  def find_flavor
    @flavor = Flavor.find(params[:id])
    render json: @flavor
  end

end
