class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    Bike.create(bike_params)
    flash[:notice] ='Bike has been created'
  end

  def show
    @bike = Bike.find(bike_params[:id])
  end

  def edit
    @bike = Bike.find(bike_params[:id])
  end

  def update
    @bike = Bike.find(bike_params[:id])
    @bike.update(bike_params)
    flash[:notice] = "Bike has been updated"
  end

  def destroy
    @bike = Bike.find(bike_params[:id])
    @bike.destroy
    flash[:notice] = 'Bike has been deleted'
  end

  private

    def bike_params
      params.require(:bike).permit(:brand, :category, :condition, :size, :title, :price, :description, :localisation)
    end
end
