require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :group_name => "Group Name",
        :user_id => 1
      ),
      Group.create!(
        :group_name => "Group Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Group Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
