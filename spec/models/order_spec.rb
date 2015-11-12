require 'rails_helper'

RSpec.describe Order, type: :model do
  it "should have a name" do
    aOrder = Order.new
    aOrder.Restaurant = "chipotle"
    expect(aOrder.Restaurant).to eq "chipotle"
  end

  it "should not accept an empty name" do
    aOrder = Order.new
    expect(aOrder.valid?).to eq  false
  end

  it "should belong to group member" do
    aOrder = Order.new
    aOrder.Restaurant = "newOrder"
    aGroupMember = GroupMember.new
    aOrder.group_member = aGroupMember
    expect(aOrder.group_member).to eq aGroupMember
  end

  it "" do
    aOrder = Order.new
    aOrder.Restaurant = "newOrder"

    aGroupMember = GroupMember.new
    aOrder.group_member = aGroupMember

    aGroup = Group.new
    aGroupMember.group = aGroup

    aUser = User.new
    aGroup.user = aUser

    expect(aOrder.group_member).to eq aGroupMember
  end



end
