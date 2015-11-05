require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :Restaurant => "MyString",
      :Menu_Item => "MyString",
      :Alterations => "MyText",
      :Diner => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_Restaurant[name=?]", "order[Restaurant]"

      assert_select "input#order_Menu_Item[name=?]", "order[Menu_Item]"

      assert_select "textarea#order_Alterations[name=?]", "order[Alterations]"

      assert_select "input#order_Diner[name=?]", "order[Diner]"
    end
  end
end
