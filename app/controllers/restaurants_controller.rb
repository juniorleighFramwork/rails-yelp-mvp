class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def snow
    @restaurants = Restaurant.find(params[:id])
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  
end
