require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase
  test "test home page has content" do
    visit root_path
    assert page.has_content?("Hello"), "Home page does not contain Hello"
  end
end
