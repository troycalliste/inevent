class Reservation < ActiveRecord::Base
    belongs_to :venue
    self.per_page = 10
  #  attr_accessible :nsme :guest_count
end
