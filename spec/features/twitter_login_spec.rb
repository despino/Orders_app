require 'rails_helper'


OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
 'provider' => 'twitter',
 'uid' => '123456',
 'info' => OmniAuth::AuthHash::InfoHash.new({'email' => 'test@user.com',
 'name' => 'testuser'})
})


describe "Create account" do
 before(:each) do
   Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
 end

 it "can sign in using Twitter" do
  visit '/'
  page.should have_content "Sign Up"
  click_link "Sign Up"
  page.should have_content "Sign in with Twitter"
  click_link "Sign in with Twitter"
  page.should have_content "Listing Groups"
 end

end
