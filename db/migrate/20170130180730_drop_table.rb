class DropTable < ActiveRecord::Migration
  def change
    drop_table :reservations
  end
end
