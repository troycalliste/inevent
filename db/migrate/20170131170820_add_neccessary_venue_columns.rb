class AddNeccessaryVenueColumns < ActiveRecord::Migration
  def change
    add_column :venues, :name, :string
    add_column :venues, :address, :string
    add_column :venues, :description, :string
    add_column :venues, :phone, :string
    add_column :venues, :type, :string

  end
end
