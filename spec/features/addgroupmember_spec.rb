require 'rails_helper'

RSpec.describe User, type: :model do
 it "should be able to sign up,create a group, and a group member to that group" do
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
   page.should have_content "Group member was successfully created."

  end
end
