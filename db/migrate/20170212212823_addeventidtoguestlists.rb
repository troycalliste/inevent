class Addeventidtoguestlists < ActiveRecord::Migration
  def change
    add_column :guestlists, :event_id, :integer
    add_column :guestlists, :name, :string
    add_column :guestlists, :count, :integer
    add_column :guestlists, :cover, :string
    add_column :guestlists, :spent, :decimal
    add_column :guestlists, :added_by, :string
    add_column :guestlists, :notes, :string
    add_column :guestlists, :checked_in, :boolean
  end
end
