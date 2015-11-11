class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.string :diner_name
      t.integer :group_id

      t.timestamps null: false
    end
    add_foreign_key :group_members, :groups, on_delete: :cascade
  end
end
