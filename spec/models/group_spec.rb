require 'rails_helper'

RSpec.describe Group, type: :model do
    it "should have a name" do
    # user = FactoryGirl.create(:user)
    # login_as(user, :scope => :user)
    aGroup = Group.new
    aGroup.group_name = "Name"
    expect(aGroup.group_name).to eq "Name"
    end

  it "should not accept an empty name" do
    # user = FactoryGirl.create(:user)
    # login_as(user, :scope => :user)
    aName = Group.new
    expect(aName.valid?).to eq false
  end

  it "should have many members" do
    aGroup = Group.new
    aGroupMember = GroupMember.new
    aGroupMember.diner_name = "Name"
    aGroupMember2 = GroupMember.new
    aGroupMember2.diner_name = "Name1"
    aGroup.group_members << aGroupMember
    aGroup.group_members << aGroupMember2
    expect(aGroup.group_members).to match_array [aGroupMember,aGroupMember2]
  end

end
