class CreateTableViews < ActiveRecord::Migration
  def change
    create_table :table_views do |t|

      t.timestamps null: false
    end
  end
end
