# frozen_string_literal: true

require 'application_system_test_case'

class BankcontactsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit bankcontacts_url

    assert_selector 'h1', text: 'Bankcontacts'
  end
end
