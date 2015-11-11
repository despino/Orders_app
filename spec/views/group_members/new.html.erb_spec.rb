require 'rails_helper'

RSpec.describe "group_members/new", type: :view do
  before(:each) do
    assign(:group_member, GroupMember.new(
      :name => "MyString",
      :group_id => ""
    ))
  end

  it "renders new group_member form" do
    render

    assert_select "form[action=?][method=?]", group_members_path, "post" do

      assert_select "input#group_member_name[name=?]", "group_member[name]"

      assert_select "input#group_member_group_id[name=?]", "group_member[group_id]"
    end
  end
end
