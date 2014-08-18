class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def new
    @offers = Offer.new
  end


  def create
    @offers = Offer.new(offer_params)
    @offer.save
    flash [:notice] ='Offer has been created'
  end

  def show
    @offers = Offer.find(params[:id])
  end

  def edit
    @offers = Offer.find(params [:id])
  end

  def update
    @offers = Offer.find(params[:id])
    @offers.update(offer_params)
    flash[:notice] = "Offer has been updated"
  end

  def destroy
    @offers = Offer.find(params[:id])
    @offers.destroy
    flash [:notice] = 'Offer has been deleted'
    redirect_to offers_path
  end



  private

    def offer_params
      params.require(:offer).permit(:title, :date, :description, :disponibility,)
    end


end

