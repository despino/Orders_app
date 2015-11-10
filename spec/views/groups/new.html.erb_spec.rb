require 'rails_helper'

RSpec.describe "groups/new", type: :view do
  before(:each) do
    assign(:group, Group.new(
      :group_name => "MyString",
      :user_id => 1
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_group_name[name=?]", "group[group_name]"

      assert_select "input#group_user_id[name=?]", "group[user_id]"
    end
  end
end
