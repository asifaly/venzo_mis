# frozen_string_literal: true

require 'application_system_test_case'

class ContactsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit contacts_url

    assert_selector 'h1', text: 'Contacts'
  end

  test 'creating a contact' do
    visit contacts_url

    click_on 'New Contact'

    assert_selector 'h1', text: 'New Contact'

    fill_in 'Name', with: 'TestContact'

    fill_in 'Email', with: 'TestContact@test.com'

    click_on 'Create Contact'

    assert_current_path contact_path(Contact.last)
    assert page.has_content? 'TestContact'
    assert page.has_content? 'TestContact@test.com'
    check_back_button
  end

  test 'editing a contact' do
    @contact = Contact.last

    visit contacts_url

    find("a[href='/contacts/#{@contact.id}/edit']").click

    assert_selector 'h1', text: 'Editing Contact'

    fill_in 'Name', with: 'TestContact1'

    fill_in 'Email', with: 'TestContact1@test.com'

    click_on 'Update Contact'

    assert_current_path contact_path(Contact.last)
    assert page.has_content? 'TestContact1'
    assert page.has_content? 'TestContact1@test.com'
    check_back_button
  end

  test 'deleting a contact' do
    @contact = Contact.last

    visit contacts_url
    accept_confirm do
      find("a[href='/contacts/#{@contact.id}']", text: 'Destroy').click
    end
    assert page.has_no_content? 'TestContact1'
  end

  private

  def check_back_button
    click_on 'Back'
    assert_current_path contacts_path
    check_back_home_button
  end
end
