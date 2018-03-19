require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit contacts_url

    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"
    assert_selector "h1", text: "New Contact"
    fill_in "Name", with: "TestContact"
    fill_in "Email", with: "TestContact@test.com"
    click_on "Create Contact"
    assert_text "TestContact" && "TestContact@test.com" && "Contact was successfully created"
  end

  test "editing a Contact" do
    @Contact = Contact.last
    visit edit_contact_url(@Contact)
    assert_selector "h1", text: "Editing Contact"
    fill_in "Name", with: "TestContact1"
    fill_in "Email", with: "TestContact1@test.com"
    click_on "Update Contact"
    assert_text "TestContact1" && "TestContact1@test.com" && "Contact was successfully updated"
  end

end
