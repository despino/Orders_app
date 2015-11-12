class AddGroupMemberid < ActiveRecord::Migration
  def change
    add_column :orders, :group_member_id, :integer
    add_foreign_key :orders, :group_members, on_delete: :cascade
  end
end
