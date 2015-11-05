require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :Restaurant => "Restaurant",
      :Menu_Item => "Menu Item",
      :Alterations => "MyText",
      :Diner => "Diner"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Restaurant/)
    expect(rendered).to match(/Menu Item/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Diner/)
  end
end
