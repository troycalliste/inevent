class Addusercolumns < ActiveRecord::Migration
  def change
    add_column :reservations, :male_user, :integer
    add_column :reservations, :female_user, :integer
    add_column :reservations, :unisex_user, :integer
  end
end
