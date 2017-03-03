class DropVenuesId < ActiveRecord::Migration
  def change
    remove_column :reservations, :venues_id
  end
end
