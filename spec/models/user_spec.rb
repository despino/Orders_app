require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a name" do
    aUser = User.new
    aUser.email = "user@user.com"
    expect(aUser.email).to eq "user@user.com"
  end

  it "should not accept an empty name" do
    aUser = User.new
    expect(aUser.valid?).to eq false
  end
  it "should have many groups" do
    aUser = User.new
    aGroup = Group.new
    aGroup.group_name = "Name"
    aGroup1 = Group.new
    aGroup1.group_name = "Name1"
    aUser.groups << aGroup
    aUser.groups << aGroup1
    expect(aUser.groups).to match_array [aGroup,aGroup1]
    
  end



end
