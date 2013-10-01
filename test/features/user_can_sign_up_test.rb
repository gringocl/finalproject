require "test_helper"

class UserCanSignUpTest < Capybara::Rails::TestCase
  feature 'Signing up' do
    scenario 'Successful sign up' do
      visit '/'
      click_link 'Sign up'
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up!"
      puts current_path
      assert page.current_path == root_path, 'Current Path Failure'
      assert page.has_content?("You have signed up successfully!"), "No message"
    end
  end
end
