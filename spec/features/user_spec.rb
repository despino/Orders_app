require 'rails_helper'

RSpec.describe User, type: :model do
  it "should be able to sign up" do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', :with => "Chuck.Norris@gmail.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Sign up"
    visit '/groups'
    page.should have_content "Listing Groups"
    page.should have_content "chuck.norris@gmail.com"
  end

  # it "should be able to log in" do
  #   visit '/'
  #   click_link 'Login'
  #   fill_in 'Email', :with => "Chuck.Norris@gmail.com"
  #   fill_in 'Password', :with => "password"
  #   click_button "Log in"
  #   visit '/'
  #   # page.should have_content "Signed in successfully."
  #   page.should have_content "OrderOut"
  # end
end
