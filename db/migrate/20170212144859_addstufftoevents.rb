class Addstufftoevents < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :date, :date
    add_column :events, :description, :string
    add_column :events, :venue_id, :integer
  end
end
