class BikesController < ApplicationController
  def index
     @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    Bike.create(bike_params)
    redirect_to bikes_path
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
    flash[:notice] = "Bike was created"
     redirect_to bike_path
  end

  def destroy
    @bike = Bike.find(bike_params[:id])
    @bike.destroy
    flash[:notice] = "Bike was destroyed"
    redirect_to bike_path

  end

  private
  def bike_params
  params.require(:bike).permit(:brand, :type, :condition, :size )
  end

end