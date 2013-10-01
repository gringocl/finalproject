require "test_helper"

class CanUpdatePostTest < Capybara::Rails::TestCase
  before do
    
    Post.create(title: 'one', content: 'lorem one')
    
    visit '/posts'
    click_link 'one'
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
