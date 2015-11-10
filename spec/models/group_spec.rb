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
end
