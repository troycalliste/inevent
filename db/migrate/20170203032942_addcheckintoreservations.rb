class Addcheckintoreservations < ActiveRecord::Migration
  def change
    add_column :reservations, :checked_in, :boolean
  end
end
