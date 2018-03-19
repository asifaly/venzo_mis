require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a task" do
    visit tasks_url

    click_on "New Task"

    assert_selector "h1", text: "New Task"

    create_update_data("Test Project", "Test Task")

    click_on "Create Task"

    assert_current_path task_path(Task.last)
    assert page.has_content? "Test Project"
    assert page.has_content? "Test Task"
    check_back_button
  end

  test "updating a task" do
    @task = Task.last

    visit tasks_url

    find("a[href='/tasks/#{@task.id}/edit']").click

    assert_selector "h1", text: "Editing Task"

    create_update_data("Updated Test Project", "Updated Test Task")

    click_on "Update Task"

    assert_current_path task_path(Task.last)
    assert page.has_content? "Updated Test Project"
    assert page.has_content? "Updated Test Task"
    check_back_button
  end

  test "deleting a task" do
    @task = Task.last

    visit tasks_url
    accept_confirm do
      find("a[href='/tasks/#{@task.id}']", :text => "Destroy").click
    end
    assert page.has_no_content? "Updated Test Project"
    assert page.has_no_content? "Updated Test Task"
  end

  private

  def check_back_button
    click_on "Back"
    assert_current_path tasks_path
    check_back_home_button
  end

  def create_update_data(project, taskname)
    fill_in "Project", with: project
    fill_in "Task name", with: taskname
  end
end
