require "test_helper"

class ViewingPostsTest < Capybara::Rails::TestCase

  
  
  # before do

    
  # end

  test "List all Posts " do

    Post.delete_all
    User.delete_all

    user = FactoryGirl.create(:user)
   
    post = FactoryGirl.create(:post)
    post.user_id = user.id
    post.save

    visit '/posts'
    
    assert page.has_content?(post.title), 'Contains title for first post'
    assert page.has_content?(post.content), 'Contains content for first post'
  

    click_link post.title
    assert page.current_path == post_path(post), 'Current Path Failure'

  end
end
