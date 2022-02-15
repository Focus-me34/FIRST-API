class RestaurantsController < ApplicationController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

  def index
    @restaurants = policy_scope(Restaurant)
    # render json: @restaurants
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    authorize @restaurant
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant  # For Pundit
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
