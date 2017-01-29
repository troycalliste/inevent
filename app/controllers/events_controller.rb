class EventsController < ApplicationController
    def index
    end
    def show
    end
   
    def edit
    end
    
    def create
        Event.new(event_params)
    end
    def update
    end
   
    def destroy
    end
    
    private
    
    def find_event
   end 
  
    def event_params
        require(params[:id])
    end
    
    def table_view
   end

end
