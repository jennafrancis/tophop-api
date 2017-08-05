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
      render json: { errors: { message: "This beer failed to save." } }
    end
  end

  def destroy
    id = (params[:id])
    @beer = Beer.find(id)
    if @beer
      @beer.destroy
    else
      render json: { errors: { message: "This beer was not found." } }
    end
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :brewery, :ibu, :abv, :description, :image_url, :style, :featured)
    end
end
