class AddVenueIdToResos < ActiveRecord::Migration
  def change
    add_column :reservations, :venue_id, :integer
  end
end
