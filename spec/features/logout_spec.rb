require 'rails_helper'

RSpec.describe User, type: :model do
 it "should be able to logout " do
   visit '/'
   click_link 'Sign Up'
   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
   fill_in 'Password', :with => "password"
   fill_in 'Password confirmation', :with => "password"
   click_button "Sign up"
   visit '/groups'
   click_link 'Logout'
   page.should have_content 'OrderOut'
 end
end
