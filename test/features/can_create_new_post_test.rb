require "test_helper"

class CanCreateNewPostTest < Capybara::Rails::TestCase
  before do
    visit '/posts'

    click_link "New Post"
  end

  test "Can create new post" do
    
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


  test "Cannot create post with out title" do
    
    click_button 'Create Post'

    assert page.has_content?('Post has not been created.'), 'Post has not been created'
    assert page.has_content?("Title can't be blank"), "Title can't be blank"
  end

  test "Cannot create post with out content" do
    
    fill_in 'Title', with: 'Hello World!'
    click_button 'Create Post'

    assert page.has_content?('Post has not been created.'), 'Post has not been created'
    assert page.has_content?("Content can't be blank"), "Content can't be blank"
  end

  test "Cannot create post with short title" do
    
    fill_in 'Title', with: 'AS'
    click_button 'Create Post'

    assert page.has_content?('Post has not been created.'), 'Error Flash'
    assert page.has_content?("Title is too short (minimum is 3 characters)"), "Title can't be short"
  end

end
