class DropRes < ActiveRecord::Migration
  def change
    drop_table :reservations
  end
end
