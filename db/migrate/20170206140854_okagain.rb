class Okagain < ActiveRecord::Migration
  def change
       add_column :reservations, :male_user, :decimal
    add_column :reservations, :female_user, :decimal
    add_column :reservations, :unisex_user, :decimal
  end
end
