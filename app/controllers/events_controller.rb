class EventsController < ApplicationController
    def index
    @events = Event.all
    render layout: nil
    end
    
    def show
        @evo = Event.find(params[:id])
        @venus = Venue.all
        @venu = Venue.find(1)
        @resos = Reservation.all
        @meep = Reservation.all.where(checked_in: true)
         @go = Guestlist.where(event_id: @evo)
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
        @resas = Reservation.where(event_id: @evo)
        render layout: nil
        
    end
   
    def edit
    end
    
    def create
       evo = Event.new
    end
    def update
    end
   
    def destroy
    end
    


    
    private
    
    def find_event
   end 
  
    def event_params
        #require.params(:event).permit(:checked_in ) #<<<<<< fill in 
    end
    
    
end
