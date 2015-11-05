require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :Restaurant => "MyString",
      :Menu_Item => "MyString",
      :Alterations => "MyText",
      :Diner => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_Restaurant[name=?]", "order[Restaurant]"

      assert_select "input#order_Menu_Item[name=?]", "order[Menu_Item]"

      assert_select "textarea#order_Alterations[name=?]", "order[Alterations]"

      assert_select "input#order_Diner[name=?]", "order[Diner]"
    end
  end
end
