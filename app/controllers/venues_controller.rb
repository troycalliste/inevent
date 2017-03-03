class VenuesController < ApplicationController
before_action :find_venue, only: [:show, :edit, :update, :destroy]
  def index
      @venus = Venue.all
      @resos = Reservation.all
  end

  def show
     @venus = Venue.all
      render :layout => nil
  end

  def new
      @venu = Venue.new
  end

  def create
      @venu = Venue.new(venue_params)
      @venu.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def venue_params
      params.require(:venue).permit(:name, :phone, :address, :description, :type)
  end
  
  def find_venue
      @venu = Venue.find(params[:id])
  end
end
