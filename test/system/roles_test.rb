# frozen_string_literal: true

require 'application_system_test_case'

class RolesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit roles_url
    assert_selector 'h1', text: 'Roles'
  end

  test 'creating a role' do
    visit roles_url

    click_on 'New Role'

    assert_selector 'h1', text: 'New Role'

    fill_in 'Title', with: 'Test Title'

    click_on 'Create Role'

    assert_current_path role_path(Role.last)
    assert page.has_content? 'Test Title'
    check_back_button
  end

  test 'editing a role' do
    @role = Role.last

    visit roles_url

    find("a[href='/roles/#{@role.id}/edit']").click

    assert_selector 'h1', text: 'Editing Role'

    fill_in 'Title', with: 'Updated Test Title'

    click_on 'Update Role'

    assert_current_path role_path(Role.last)
    assert page.has_content? 'Updated Test Title'
    check_back_button
  end

  test 'deleting a role' do
    @role = Role.last

    visit roles_url
    accept_confirm do
      find("a[href='/roles/#{@role.id}']", text: 'Destroy').click
    end
    assert page.has_no_content? 'Updated Test Title'
  end

  private

  def check_back_button
    click_on 'Back'
    assert_current_path roles_path
    check_back_home_button
  end
end
