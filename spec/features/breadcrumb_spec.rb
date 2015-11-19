require 'rails_helper'

RSpec.describe User, type: :model do
  it "should be able to click on breadcrumb links" do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', :with => "Chuck.Norris@gmail.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button 'Sign up'
    visit '/groups'
    page.should have_content 'Listing Groups'
    # click_link 'My Groups'
    # visit '#'
    click_link 'New Group'
    visit '/groups/new'
    page.should have_content 'New Group'
    fill_in 'Group name', :with =>'Family'
    fill_in 'Group name', :with => "Anything, it doesn't matter."
    click_button 'Create Group'
    page.should have_content "Group was successfully created."
    # page.should have_content 'My Groups'
    # page.should have_content 'New Group'
    # click_link 'New Group'
    # visit '/groups/new'
    click_link 'My Groups'
    visit '/groups'
    page.should have_content 'My Groups'
    click_link 'Edit'
    page.should have_content 'My Groups'
    # click_link 'Edit Group'
    # page.should have_content 'Group name'
    click_link 'My Groups'
    page.should have_content 'Listing Groups'
    click_link 'Show'
    page.should have_content 'Group Members'

  end


  # testing diners, orders
  it "should be able to click on breadcrumb links" do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', :with => "Chuck.Norris@gmail.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Sign up"
    visit '/groups'
    page.should have_content 'My Groups'
    click_link 'New Group'
    fill_in 'Group name', :with => "Anything, it doesn't matter."
    click_button 'Create Group'
    page.should have_content "Group was successfully created."
    fill_in 'Add Diner', :with => "Anything, it doesn't matter."
    click_button 'Add'
    page.should have_content 'Group Members'
    # click_link 'Group Members'
    # page.should have_content 'Diner Name'
    click_link 'My Groups'
    page.should have_content 'Listing Groups'
  end

  # testing orders
  it "should be able to click on breadcrumb links" do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', :with => "Chuck.Norris@gmail.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Sign up"
    visit '/groups'
    page.should have_content 'My Groups'
    click_link 'New Group'
    fill_in 'Group name', :with => "Anything, it doesn't matter."
    click_button 'Create Group'
    page.should have_content "Group was successfully created."
    fill_in 'Add Diner', :with => "Anything, it doesn't matter."
    click_button 'Add'
    page.should have_content 'Group Members'
    # click_link 'Group Members'
    # page.should have_content 'Diner Name'
    click_link 'Add Order'
    page.should have_content 'New Order'
    fill_in 'Restaurant', :with => "Subway"
    fill_in 'Menu item', :with => "sandwich"
    fill_in 'Alterations', :with => "no mayo"
    click_button "Create Order"
    page.should have_content 'Diner Name'
    page.all('a').each { |tag| p tag.text }
    click_link 'View Orders'
    page.should have_content 'Member Order'
    # click_link 'Member Order'
    # page.should have_content 'Restaurants'
    click_link 'Group Members'
    page.should have_content 'Diner Name'
    click_link 'View Orders'
    page.should have_content 'Member Order'
    click_link 'My Groups'
    page.should have_content 'Listing Groups'
  end

#testing from members
it "should be able to click on breadcrumb links" do
  visit '/'
  click_link 'Sign Up'
  fill_in 'Email', :with => "Chuck.Norris@gmail.com"
  fill_in 'Password', :with => "password"
  fill_in 'Password confirmation', :with => "password"
  click_button "Sign up"
  visit '/groups'
  page.should have_content 'My Groups'
  click_link 'New Group'
  fill_in 'Group name', :with => "Anything, it doesn't matter."
  click_button 'Create Group'
  page.should have_content "Group was successfully created."
  fill_in 'Add Diner', :with => "Anything, it doesn't matter."
  click_button 'Add'
  page.should have_content 'Group Members'
  # click_link 'Group Members'
  # page.should have_content 'Diner Name'
  click_link 'Add Order'
  page.should have_content 'New Order'
  fill_in 'Restaurant', :with => "Subway"
  fill_in 'Menu item', :with => "sandwich"
  fill_in 'Alterations', :with => "no mayo"
  click_button 'Create Order'
  page.should have_content 'Diner Name'
  click_link 'Add Order'
  page.should have_content 'New Order'
  # click_link 'New Order'
  # page.should have_content 'New Order'
  click_link 'Group Members'
  page.should have_content 'Diner Name'
  click_link 'Add Order'
  page.should have_content 'New Order'
  click_link 'My Groups'
  page.should have_content 'Listing Groups'
  end

#testing for order view
it "should be able to click on breadcrumb links" do
  visit '/'
  click_link 'Sign Up'
  fill_in 'Email', :with => "Chuck.Norris@gmail.com"
  fill_in 'Password', :with => "password"
  fill_in 'Password confirmation', :with => "password"
  click_button "Sign up"
  visit '/groups'
  page.should have_content 'My Groups'
  click_link 'New Group'
  fill_in 'Group name', :with => "Anything, it doesn't matter."
  click_button 'Create Group'
  page.should have_content "Group was successfully created."
  fill_in 'Add Diner', :with => "Anything, it doesn't matter."
  click_button 'Add'
  page.should have_content 'Group Members'
  # click_link 'Group Members'
  # page.should have_content 'Diner Name'
  click_link 'Add Order'
  page.should have_content 'New Order'
  fill_in 'Restaurant', :with => "Subway"
  fill_in 'Menu item', :with => "sandwich"
  fill_in 'Alterations', :with => "no mayo"
  click_button 'Create Order'
  page.should have_content 'View Orders'
  click_link 'View Orders'
  page.should have_content 'Show'
  click_link 'Show'
  page.should have_content 'Order View'
  # click_link 'Order View'
  # page.should have_content 'Menu item'
  click_link 'Member Order'
  page.should have_content 'Restaurants'
  click_link 'Show'
  page.should have_content 'My Groups'
  click_link 'My Groups'
  page.should have_content 'Listing Groups'
  end
end
