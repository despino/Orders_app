class Removedinername < ActiveRecord::Migration
  def change
    remove_column :orders, :Diner 
  end
end
