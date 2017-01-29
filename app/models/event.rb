class Event < ActiveRecord::Base
    belongs_to :user
    has_many :tables_views
    has_many :reservations
    has_many :manage_inventorys
    has_many :guestlists
    has_many  :promoters
end
