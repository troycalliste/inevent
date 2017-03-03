class Revisecolumns < ActiveRecord::Migration
  def change
    remove_column :reservations, :male_user
    remove_column :reservations, :female_user
    remove_column :reservations, :unisex_user
  end
end
