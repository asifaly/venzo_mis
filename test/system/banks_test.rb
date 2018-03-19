require "application_system_test_case"

class BanksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit banks_url
    assert_selector "h1", text: "Banks"
  end

  test "creating a bank" do
    visit banks_url
    click_on "New Bank"
    assert_selector "h1", text: "New Bank"
    fill_in "Name", with: "Bank of Test"
    click_on "Create Bank"
    assert_text "Bank of Test" && "Bank was successfully created"
  end

  test "editing a bank" do
    @bank = Bank.last
    visit edit_bank_url(@bank)
    assert_selector "h1", text: "Editing Bank"
    fill_in "Name", with: "Update Bank of Test"
    click_on "Update Bank"
    assert_text "Update Bank of Test" && "Bank was successfully updated"
  end
end
