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

    fill_in "Name", with: "Test Bank"

    click_on "Create Bank"

    assert_current_path bank_path(Bank.last)
    assert page.has_content? "Test Bank"
    check_back_button
  end

  test "editing a bank" do
    @bank = Bank.last

    visit banks_url

    find("a[href='/banks/#{@bank.id}/edit']").click

    assert_selector "h1", text: "Editing Bank"

    fill_in "Name", with: "Updated Test Bank"

    click_on "Update Bank"

    assert_current_path bank_path(Bank.last)
    assert page.has_content? "Updated Test Bank"
    check_back_button
  end

  test "deleting a bank" do
    @bank = Bank.last

    visit banks_url
    accept_confirm do
      find("a[href='/banks/#{@bank.id}']", :text => "Destroy").click
    end
    assert page.has_no_content? "Updated Test Bank"
  end

  private

  def check_back_button
    click_on "Back"
    assert_current_path banks_path
    check_back_home_button
  end
end
