class Dropothertable < ActiveRecord::Migration
  def change
    drop_table :table_for_reservations
  end
end
