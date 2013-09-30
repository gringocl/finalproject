require "test_helper"

class CanCreateNewPostTest < Capybara::Rails::TestCase
  test "Can create new post" do
    visit '/posts'
    click_link "New Post"
    fill_in 'Title', with: 'Hello World!'
    fill_in 'Content', with: 'Lorem ipsum Adipisicing aliquip enim ut quis mollit in do eu sint sint fugiat cupidatat id do proident esse Excepteur elit amet commodo in minim nostrud deserunt consequat amet incididunt reprehenderit nisi in irure aliquip eiusmod esse.'
    click_button 'Create Post'

    assert page.has_content?('Post has been created!')

    post = Post.where(title: 'Hello World!').first

    assert page.current_path == post_path(post), 'Current Path Failure'

    assert page.has_content?(post.title), 'Show page contains title'
    assert page.has_content?(post.content), 'Show page contains content'

    assert page.has_title?(post.title), 'Page has post title as title'
  end


  # test "Error messages are display when creating a post with out title" do
  #   visit '/posts'
  #   click_link "New Post"
  #   click_button 'Create Post'

  #   assert page.has_content?('Post has been created!')
  # end

end
