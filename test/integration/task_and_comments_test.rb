require 'test_helper'

class TaskAndCommentsTest < ActionDispatch::IntegrationTest

  test "create new task" do
    visit new_task_path
    fill_in(id: 'task_title', with: 'Sample Task')
    fill_in(id: 'task_text', with: 'Here could be some text....')
    find_button('Create Task').click

    assert page.has_content? 'Sample Task'
  end

  test "create task with not enough characters" do
    visit new_task_path
    fill_in(id: 'task_title', with: 'Sample Task')
    fill_in(id: 'task_text', with: '123')
    find_button('Create Task').click

    assert page.has_content? 'Text is too short'
  end

  test "update a task" do
    visit task_path(1)
    #save_and_open_page
    assert page.has_content? 'Test Task 1'

    visit edit_task_path(1)
    fill_in(id: 'task_title', with: 'Example Update Task 1')
    #save_and_open_page
    find_button('Update').click
    #save_and_open_page
    assert page.has_content? 'Example Update Task 1'
  end

  test "create new comment" do
    visit task_path(1)
    click_link('new comment')
    #save_and_open_page
    fill_in(id: 'comment_content', with: 'Looks realy greate')
    find_button('Create Comment').click
    #save_and_open_page
  end

  test "edit existing comment" do
    visit edit_task_comment_path(2,3)
    #save_and_open_page
    fill_in(id: 'comment_content', with: 'Hm.... worse')
    find_button('Update Comment').click
    assert page.has_content? 'Hm.... worse'
  end
end
