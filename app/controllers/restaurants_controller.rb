class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
   @restaurant = Restaurant.new
   @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(params[:restaurant])
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  # end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:address, :name, :category)
  end
end
