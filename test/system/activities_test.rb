require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a activity" do
    visit activities_url
    click_on "New Activity"
    assert_selector "h1", text: "New Activity"
    fill_in "Name", with: "Activity of Test"
    click_on "Create Activity"
    assert_text "Activity of Test" && "Activity was successfully created"
  end

  test "editing a Activity" do
    @activity = Activity.last
    visit edit_activity_url(@activity)
    assert_selector "h1", text: "Editing Activity"
    fill_in "Name", with: "Update Activity of Test"
    click_on "Update Activity"
    assert_text "Update Activity of Test" && "Activity was successfully updated"
  end
end
