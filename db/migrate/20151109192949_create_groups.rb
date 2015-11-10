class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :user_id

      t.timestamps null: false
    end
    add_foreign_key :groups, :users, on_delete: :cascade
  end

end
