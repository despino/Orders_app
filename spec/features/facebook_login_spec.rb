require 'rails_helper'


OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
 'provider' => 'facebook',
 'uid' => '123456',
 'info' => OmniAuth::AuthHash::InfoHash.new({'email' => 'test@user.com',
 'name' => 'testuser'})
})


describe "Create account" do
 before(:each) do
   Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
 end

  it "can sign in using Facebook" do
   visit '/'
   page.should have_content "Sign Up"
   click_link "Sign Up"
   page.should have_content "Sign in with Facebook"
   click_link "Sign in with Facebook"
   page.should have_content "My Groups"
   page.should have_content "Listing Groups"
 end

end
