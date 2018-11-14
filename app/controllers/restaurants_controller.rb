class RestaurantsController < ApplicationController
  before_action :find_res, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(res_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def res_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def find_res
    @restaurant = Restaurant.find(params[:id])
  end
end
