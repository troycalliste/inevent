class CreateDoggies < ActiveRecord::Migration
  def change
    create_table :doggies do |t|
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
