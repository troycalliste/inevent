class GuestlistsController < ApplicationController
   def index
        @guesos = Guestlist.all
        @venus = Venue.all
        @evo = Event.find(params[:event_id])
        
        @venus = Venue.all
        @venu = Venue.find(1)
        @geep = Guestlist.all.where(checked_in: true)
        @guesas = Guestlist.all.where(event_id: @evo)
        render layout: nil
   end
   
   def show 
   end 
end
