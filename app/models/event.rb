class Event < ActiveRecord::Base
    belongs_to :venues 
    has_many :reservations
    has_many :guestlists
end
