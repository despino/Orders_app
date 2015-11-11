require 'rails_helper'

RSpec.describe "group_members/show", type: :view do
  before(:each) do
    @group_member = assign(:group_member, GroupMember.create!(
      :name => "Name",
      :group_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
