class AddTableViewToEvents < ActiveRecord::Migration
  def change
    add_column :events, :table_view, :string
  end
end
