require 'rails_helper'


RSpec.describe User, type: :model do
  # before(:each) do
  #   visit'/users/sign_up'
  #   fill_in('Email', with: 'Foo@bar.com')
  #   fill_in('Password', with: '12345678')
  #   fill_in('Password confirmation', with: '12345678')
  #   click_button 'Sign up'
  # end

  it 'should be able to rate the order' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', :with => "Chuck.Norris@gmail.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Sign up"
    click_link 'New Group'
    # visit '/groups/new'
    fill_in 'Group name', :with => "Anything, it doesn't matter."
    click_button 'Create Group'
    page.should have_content "Group was successfully created."

    fill_in 'Add Diner', :with => "Tom"
    click_button "Add"
    page.should have_content "Group Member was successfully added."
    click_link 'Add Order'
    page.should have_content "Restaurant"
    fill_in 'Restaurant', :with => 'restaurant'
    click_button 'Create Order'
    page.should have_content "Order was successfully updated."
    click_link 'View Orders'
    page.all('a').each { |tag| p tag.text }
    click_link 'Show'
    page.should have_content "Rate your meal:"

  end
end
