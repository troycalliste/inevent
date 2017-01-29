class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|

      t.timestamps null: false
    end
  end
end
