require "application_system_test_case"

class AssignmentsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit assignments_url
    assert_selector "h1", text: "Assignments"
  end

  test "creating an assignment" do
    visit assignments_url

    click_on "New Assignment"

    assert_selector "h1", text: "New Assignment"

    fill_in "Task date", with: "2018-03-20"

    fill_in "Hours", with: "9.0"

    fill_in "Notes", with: "Test Assignment"

    click_on "Create Assignment"

    assert_current_path assignment_path(Assignment.last)
    assert page.has_content? "2018-03-20"
    assert page.has_content? "9.0"
    assert page.has_content? "Test Assignment"
    check_back_button
  end

  test "editing an assignment" do
    @assignment = Assignment.last

    visit assignments_url

    find("a[href='/assignments/#{@assignment.id}/edit']").click

    assert_selector "h1", text: "Editing Assignment"

    fill_in "Task date", with: "2018-03-22"

    fill_in "Hours", with: "8.0"

    fill_in "Notes", with: "Updated Test Assignment"

    click_on "Update Assignment"

    assert_current_path assignment_path(Assignment.last)
    assert page.has_content? "2018-03-22"
    assert page.has_content? "8.0"
    assert page.has_content? "Updated Test Assignment"
    check_back_button
  end

  test "deleting an assignment" do
    @assignment = Assignment.last

    visit assignments_url
    accept_confirm do
      find("a[href='/assignments/#{@assignment.id}']", :text => "Destroy").click
    end
    assert page.has_no_content? "Updated Test Assignment"
  end

  private

  def check_back_button
    click_on "Back"
    assert_current_path assignments_path
    check_back_home_button
  end
end
