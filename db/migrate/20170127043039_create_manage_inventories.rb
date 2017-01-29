class CreateManageInventories < ActiveRecord::Migration
  def change
    create_table :manage_inventories do |t|

      t.timestamps null: false
    end
  end
end
