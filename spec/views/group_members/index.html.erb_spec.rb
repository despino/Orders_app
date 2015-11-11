require 'rails_helper'

RSpec.describe "group_members/index", type: :view do
  before(:each) do
    assign(:group_members, [
      GroupMember.create!(
        :name => "Name",
        :group_id => ""
      ),
      GroupMember.create!(
        :name => "Name",
        :group_id => ""
      )
    ])
  end

  it "renders a list of group_members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
