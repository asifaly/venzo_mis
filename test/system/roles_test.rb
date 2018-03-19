require "application_system_test_case"

class RolesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit roles_url
    assert_selector "h1", text: "Roles"
  end

  test "creating a role" do
    visit roles_url
    click_on "New Role"
    assert_selector "h1", text: "New Role"
    fill_in "Title", with: "Role of Test"
    click_on "Create Role"
    assert_text "Role of Test" && "Role was successfully created"
  end

  test "editing a role" do
    @role = Role.last
    visit edit_role_url(@role)
    assert_selector "h1", text: "Editing Role"
    fill_in "Title", with: "Update Role of Test"
    click_on "Update Role"
    assert_text "Update Role of Test" && "Role was successfully updated"
  end
end
