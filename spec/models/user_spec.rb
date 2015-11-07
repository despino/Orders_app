require 'rails_helper'

RSpec.describe User, type: :model do
 it "should be able to sign up" do
   visit '/'
   click_link 'Sign Up'
   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
   fill_in 'Password', :with => "password"
   fill_in 'Password confirmation', :with => "password"
   click_button "Sign up"
   #visit '/orders'
   page.should have_content "Listing Orders"
   page.should have_content "chuck.norris@gmail.com"
 end

 # it "should be able to login" do
 #   visit 'users/sign_in'
 #   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
 #   fill_in 'Password', :with => "password"
 #   click_button "Log in"
 #   visit '/'
 #   page.should have_content "OrderOut"
 #   page.should have_content "An App for remembering everyone's food orders"
 # end

end
