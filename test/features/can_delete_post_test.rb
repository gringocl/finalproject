require "test_helper"

class CanDeletePostTest < Capybara::Rails::TestCase
  test "Can delete post" do

    Post.create(title: 'one', content: 'lorem one')
    
    visit '/posts'
    click_link 'one'

    click_link 'Delete Post'
    
    assert page.has_content?('Post has been deleted!')
    refute page.has_content?('one')
    
  end
end
