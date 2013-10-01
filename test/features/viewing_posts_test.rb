require "test_helper"

class ViewingPostsTest < Capybara::Rails::TestCase

  
  
  before do

    
    visit '/posts'

  end

  test "List all Posts " do
    
    assert page.has_content?(posts(:one).title), 'Contains title for first post'
    assert page.has_content?(posts(:one).content), 'Contains content for first post'
    assert page.has_content?(posts(:two).title), 'Contains title for second post'
    assert page.has_content?(posts(:two).content), 'Contains content for second post'

    post = Post.where(title: 'one').first
    click_link 'one'
    assert page.current_path == post_path(post), 'Current Path Failure'

  end
end
