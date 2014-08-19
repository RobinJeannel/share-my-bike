class BikesController < ApplicationController
  before_action :authenticate_user!
  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    Bike.create(bike_params)
    flash[:notice] ='Bike has been created'
    redirect_to bikes_path
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    flash[:notice] = "Bike has been updated"
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    flash[:notice] = 'Bike has been deleted'
    redirect_to bikes_path
  end

  private

    def bike_params
      params.require(:bike).permit(:photo_bike, :brand, :category, :condition, :size, :title, :price, :description, :localisation)
    end
end














