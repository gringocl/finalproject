require "test_helper"

class CanDeletePostTest < Capybara::Rails::TestCase
  test "Can delete post" do
    Post.delete_all
    User.delete_all

    user = FactoryGirl.create(:user)

    visit '/'
    click_link "Sign in"

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    
    click_button 'Sign in'
    
    refute page.has_content?("Sorry."), "not signed in"
 

    assert page.has_content?("Signed in successfully."), "signed in"


    assert current_path == root_path, "user redirected"
   
    post = FactoryGirl.create(:post)
    post.user_id = user.id
    post.save

    visit '/posts'
    assert page.has_link?(post.title)

    click_link post.title
    assert page.has_content?(post.content), 'No content'
    assert post.user_id == user.id

  


    click_link 'Delete Post'
    
    assert page.has_content?('Post has been deleted!')
    refute page.has_content?(post.title)
    
  end
end
