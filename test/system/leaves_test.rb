require "application_system_test_case"

class LeavesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit leaves_url

    assert_selector "h1", text: "Leaves"
  end

  test "creating a Leave" do
    visit leaves_url
    click_on "New Leave"
    assert_selector "h1", text: "New Leave"
    fill_in "Leavedate", with: "2018-03-23"
    find("h1").click #to take focus away from jquery calendar
    click_on "Create Leave"
    assert_text "2018-03-23" && "Leave was successfully created"
  end

  test "editing a Leave" do
    @leave = Leave.last
    visit edit_leave_url(@leave)
    assert_selector "h1", text: "Editing Leave"
    fill_in "Leavedate", with: "2018-04-23"
    find("h1").click #to take focus away from jquery calendar
    click_on "Update Leave"
    assert_text "2018-04-23" && "Leave was successfully updated"
  end

end
