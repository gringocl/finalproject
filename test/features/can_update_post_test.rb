require "test_helper"

class CanUpdatePostTest < Capybara::Rails::TestCase
  before do

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
   
    click_link 'Edit post'

  end

  test "Can update post" do
    
    fill_in 'Title', with: 'One + One'
    click_button 'Update Post'

    assert page.has_content?('Post has been updated.'), 'Post has not been updated'
    assert page.has_content?('One + One'), 'Title has not changed'
    
  end

  test "Can't update post with bad attributes" do
    
    fill_in 'Title', with: ''
    
    click_button 'Update Post'

    assert page.has_content?('Post has not been updated.'), 'Post has not been updated'
    
    
  end
end
