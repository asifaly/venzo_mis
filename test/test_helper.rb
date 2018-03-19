require 'simplecov'
SimpleCov.start
puts 'SimpleCov Started Successfully!'

require 'minitest/reporters'
Minitest::Reporters.use!

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  private

  def check_back_home_button
    click_on "Back Home"
    assert_current_path root_path
  end
end
