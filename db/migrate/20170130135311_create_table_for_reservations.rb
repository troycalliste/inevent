class CreateTableForReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :guest_count
      t.integer :min
      t.integer :spent
      t.integer :tables
      t.string :status
      t.string :server
      t.string :added_by
      t.text :notes
    end
  end
end
