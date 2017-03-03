class AddVenueIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :venues_id, :integer
  end
end
