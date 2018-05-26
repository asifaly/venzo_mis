# frozen_string_literal: true

require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit users_url
    assert_selector 'h1', text: 'Users'

    find("a[href='/assignments/byuser?userid=#{User.last.id}']", text: 'User Assignments').click

    assert_selector 'td', text: users(:two).username
  end
end
