class Api::BeersController < ApplicationController
  def index
    @beers = Beer.all
    render json: @beers
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      render json: @beer
    else
      render json: { errors: { message: "This beer failed to save."}}
    end
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :brewery, :ibu, :abv, :description, :image_url, :style)
    end
end
