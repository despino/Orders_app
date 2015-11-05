require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :Restaurant => "Restaurant",
        :Menu_Item => "Menu Item",
        :Alterations => "MyText",
        :Diner => "Diner"
      ),
      Order.create!(
        :Restaurant => "Restaurant",
        :Menu_Item => "Menu Item",
        :Alterations => "MyText",
        :Diner => "Diner"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Restaurant".to_s, :count => 2
    assert_select "tr>td", :text => "Menu Item".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Diner".to_s, :count => 2
  end
end
