# frozen_string_literal: true

require 'application_system_test_case'

class LeavesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit leaves_url

    assert_selector 'h1', text: 'Leaves'
  end

  test 'creating a leave' do
    visit leaves_url

    click_on 'New Leave'

    assert_selector 'h1', text: 'New Leave'

    fill_in 'Leavedate', with: '2018-03-23'

    find('h1').click # to take focus away from jquery calendar

    click_on 'Create Leave'

    assert_current_path leave_path(Leave.last)
    assert page.has_content? '2018-03-23'
    check_back_button
  end

  test 'editing a leave' do
    @leave = Leave.last

    visit leaves_url

    find("a[href='/leaves/#{@leave.id}/edit']").click

    assert_selector 'h1', text: 'Editing Leave'

    fill_in 'Leavedate', with: '2018-04-23'

    find('h1').click # to take focus away from jquery calendar

    click_on 'Update Leave'

    assert_current_path leave_path(Leave.last)
    assert page.has_content? '2018-04-23'
    check_back_button
  end

  test 'deleting a leave' do
    @leave = Leave.last

    visit leaves_url
    accept_confirm do
      find("a[href='/leaves/#{@leave.id}']", text: 'Destroy').click
    end
    assert page.has_no_content? '2018-04-23'
  end

  private

  def check_back_button
    click_on 'Back'
    assert_current_path leaves_path
    check_back_home_button
  end
end
