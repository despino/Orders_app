require 'rails_helper'

RSpec.describe User, type: :model do
 it "should be able to edit profile " do
   visit '/'
   click_link 'Sign Up'
   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
   fill_in 'Password', :with => "password"
   fill_in 'Password confirmation', :with => "password"
   click_button "Sign up"
   visit '/groups'
   click_link 'Edit Profile'
   page.should have_content 'Edit User'
   fill_in 'Email', :with => "Chuck.Norris@yahoo.com"
   fill_in 'Current password', :with => "password"
   fill_in 'Password', :with => "password1"
   fill_in 'Password confirmation', :with => "password1"
   click_button "Update"
   page.should have_content "Your account has been updated successfully."
 end
end
