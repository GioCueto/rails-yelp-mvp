class RestaurantsController < ApplicationController
  def index
    @TodosRestaurantes = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :phone_number, :address)
  end

  def new_review
    @review = Review.new

  end

  def create_review

  end

end
