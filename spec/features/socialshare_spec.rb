require 'rails_helper'


RSpec.describe User, type: :model do
  before(:each) do
    visit'/users/sign_up'
    fill_in('Email', with: 'Foo@bar.com')
    fill_in('Password', with: '12345678')
    fill_in('Password confirmation', with: '12345678')
    click_button 'Sign up'
  end
  it "should be able to click on facebook like button" do
    visit '/orders/'
    page.should have_content "Restaurant"
    page.all('a').each { |tag| p tag.text }
    click_link 'New Order'
    visit '/orders/new'
    fill_in 'Restaurant', :with => "Subway"
    fill_in 'Menu item', :with => "sandwich"
    fill_in 'Alterations', :with => "no mayo"
    click_button "Create Order"
    page.should have_selector(:link_or_button, 'Tweet')
    page.should have_css('.fb-like')

  end
end
