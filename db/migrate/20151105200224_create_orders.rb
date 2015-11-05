class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :Restaurant
      t.string :Menu_Item
      t.text :Alterations
      t.string :Diner

      t.timestamps null: false
    end
  end
end
