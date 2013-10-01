require "test_helper"

class CanUpdatePostTest < Capybara::Rails::TestCase
  before do
    
    Post.create(title: 'one', content: 'lorem one')
    
    visit '/posts'

  end

  test "Can update post" do
    click_link 'one'
    click_link 'Edit post'
    fill_in 'Title', with: 'One + One'
    click_button 'Update Post'

    assert page.has_content?('Post has been updated.'), 'Post has not been updated'
    assert page.has_content?('One + One'), 'Title has not changed'
    
  end
end
