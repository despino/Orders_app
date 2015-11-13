class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ratings, :integer
  end
end
