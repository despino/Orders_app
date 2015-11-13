require 'rails_helper'

RSpec.describe User, type: :model do
 it "should be able to backtrack" do
   visit '/'
   click_link 'Sign Up'
   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
   fill_in 'Password', :with => "password"
   fill_in 'Password confirmation', :with => "password"
   click_button "Sign up"
   visit '/groups'
   click_link 'New Group'
   fill_in 'Group name', :with => "Anything, it doesn't matter."
   click_button 'Create Group'
   page.should have_content "Group was successfully created."
   fill_in 'Add Diner', :with => "Tom"
   click_button "Add"
   page.should have_content "Group Member was successfully added."
   click_link 'Add Order'
   fill_in 'Restaurant', :with => 'Jack in the Box'
   fill_in 'Menu item', :with => 'Hamburger'
   fill_in 'Alterations', :with => 'no lettuce'
   click_button 'Create Order'
   page.should have_content 'Order was successfully updated'
   click_link 'Back'
   page.should have_content 'Listing Groups'
   click_link 'Show'
   page.should have_content 'Group name'
   click_link 'View Orders'
   page.should have_content "Diner's Orders"
   click_link 'Back'
   page.should have_content 'Group name'
   click_link 'Back'
   page.should have_content 'Listing Groups'

  end
end
