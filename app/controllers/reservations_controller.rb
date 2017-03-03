class ReservationsController < ApplicationController
  def index
  @resos = Reservation.all
  @venus = Venue.all
        @evo = Event.find(params[:event_id])
        @venus = Venue.all
        @venu = Venue.find(1)
        @meep = Reservation.all.where(checked_in: true)
        # failed attempt to paginate  still dont know how @meep = @meep.paginate(page: params[:page])
        @moop = @meep.sum(:male_user)
        @foop = @meep.sum(:female_user)
        @uoop = @meep.sum(:unisex_user)
        @mopa = (@moop / (@moop + @foop + @uoop)) * 100
        @fopa = (@foop / (@moop + @foop + @uoop)) * 100
        @uopa = (@uoop / (@moop + @foop + @uoop)) * 100
        @moopa = (@mopa).round
        @foopa = (@fopa).round
        @uoopa = (@uopa).round
       # @guest = Guestlist.find(params[:event_id])  well handle this later
        @resas = Reservation.all.where(event_id: @evo)
  render :layout => nil
  end

  def show
    @reso = Reservation.find_by(params[:venue_id])
    @resos = Reservation.all
    @meep = Reservation.all.where(checked_in: true)
  end

  def create
    @event = Event.find(params[:event_id])
    @reso = Reservation.create(params_reso)
    @reso.event_id = @event.id
     if @reso.save
       redirect_to event_path(@event)
     else
       render 'new'
    
  end
  
   def new
     @reso = Reservation.new
  end
 
  def edit
  @reso = Reservation.find(params[:id])
  end

  def update
      @reso = Reservation.find(params[:id])
      @reso.update_attributes(params_reso)
  end

  def destroy
  end
  
  def otherven
    @resos = Reservation.all.where(venues_id: 1)
  end
  
  
  private
  
  def params_reso
  params.require(:reservation).permit(:name, :guest_count, :min, :spent, :tables, :status, :server, :added_by, :notes, :venue_id, :event_id, :checked_in, :male_user, :female_user, :unisex_user)
  end

end
end
