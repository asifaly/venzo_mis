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
    #select "Nordea", :from => "Bank", visible: false
    fill_in "Project", with: "Test Project"
    fill_in "Task name", with: "Test Task"
    click_on "Create Task"

    assert_text "Test Project" && "Test Task"
  end

  test "updating a task" do
    @task = Task.last
    visit edit_task_url(@task)
    assert_selector "h1", text: "Editing Task"
    fill_in "Project", with: "Updated Test Project"
    fill_in "Task name", with: "Updated Test Task"
    click_on "Update Task"
    assert_text "Updated Test Project" && "Updated Test Task"
  end
end
