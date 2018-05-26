# frozen_string_literal: true

require 'application_system_test_case'

class AssignmentsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit assignments_url
    assert_selector 'h1', text: 'Assignments'

    find('a', text: 'Today').click
    assert_selector 'td', text: assignments(:one).notes

    find('a', text: 'Yesterday').click
    assert_selector 'td', text: assignments(:two).notes

    find('a', text: 'This Month').click
    assert_selector 'td', text: assignments(:one).notes

    find('a', text: 'Last Month').click
    assert_selector 'td', text: assignments(:three).notes
  end

  test 'creating an assignment' do
    visit assignments_url

    click_on 'New Assignment'

    assert_selector 'h1', text: 'New Assignment'

    fill_in 'Task date', with: Date.yesterday.to_s(:db)

    fill_in 'Hours', with: '9.0'

    fill_in 'Notes', with: 'Test Assignment'

    click_on 'Create Assignment'

    assert_current_path assignment_path(Assignment.last)
    assert page.has_content? Date.yesterday.to_s
    assert page.has_content? '9.0'
    assert page.has_content? 'Test Assignment'
    check_back_button
  end

  test 'editing an assignment' do
    @assignment = Assignment.last

    visit assignments_url

    find("a[href='/assignments/#{@assignment.id}/edit']").click

    assert_selector 'h1', text: 'Editing Assignment'

    fill_in 'Task date', with: Date.today.to_s(:db)

    fill_in 'Hours', with: '8.0'

    fill_in 'Notes', with: 'Updated Test Assignment'

    click_on 'Update Assignment'

    assert_current_path assignment_path(Assignment.last)
    assert page.has_content? Date.today.to_s
    assert page.has_content? '8.0'
    assert page.has_content? 'Updated Test Assignment'
    check_back_button
  end

  test 'deleting an assignment' do
    @assignment = Assignment.last

    visit assignments_url
    accept_confirm do
      find("a[href='/assignments/#{@assignment.id}']", text: 'Destroy').click
    end
    assert page.has_no_content? 'Updated Test Assignment'
  end

  private

  def check_back_button
    click_on 'Back'
    assert_current_path assignments_path
    check_back_home_button
  end
end
