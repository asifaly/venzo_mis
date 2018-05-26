# frozen_string_literal: true

require 'application_system_test_case'

class ActivitiesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit activities_url

    assert_selector 'h1', text: 'Activities'
  end

  test 'creating an activity' do
    visit activities_url

    click_on 'New Activity'

    assert_selector 'h1', text: 'New Activity'

    fill_in 'Name', with: 'Test Activity'

    click_on 'Create Activity'

    assert_current_path activity_path(Activity.last)
    assert page.has_content? 'Test Activity'
    check_back_button
  end

  test 'editing an activity' do
    @activity = Activity.last

    visit activities_url

    find("a[href='/activities/#{@activity.id}/edit']").click

    assert_selector 'h1', text: 'Editing Activity'

    fill_in 'Name', with: 'Updated Test Activity'

    click_on 'Update Activity'

    assert_current_path activity_path(Activity.last)
    assert page.has_content? 'Updated Test Activity'
    check_back_button
  end

  test 'deleting an activity' do
    @activity = Activity.last

    visit activities_url
    accept_confirm do
      find("a[href='/activities/#{@activity.id}']", text: 'Destroy').click
    end
    assert page.has_no_content? 'Updated Test Activity'
  end

  private

  def check_back_button
    click_on 'Back'
    assert_current_path activities_path
    check_back_home_button
  end
end
