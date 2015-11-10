require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :group_name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_group_name[name=?]", "group[group_name]"

      assert_select "input#group_user_id[name=?]", "group[user_id]"
    end
  end
end
