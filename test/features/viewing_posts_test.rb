require "test_helper"

class ViewingPostsTest < Capybara::Rails::TestCase


  
  before do
    
    Post.create(title: 'one', content: 'lorem one')
    Post.create(title: 'two', content: 'lorem two')
    
    visit '/posts'

  end

  test "List all Posts " do
    
    assert page.has_content?('one'), 'Contains title for first post'
    assert page.has_content?('lorem one'), 'Contains content for first post'
    assert page.has_content?('two'), 'Contains title for second post'
    assert page.has_content?('lorem two'), 'Contains content for second post'

    post = Post.where(title: 'one').first
    click_link 'one'
    assert page.current_path == post_path(post), 'Current Path Failure'

  end
end
