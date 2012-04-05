ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'

class ActionController::TestCase
  include Devise::TestHelpers
end

class ActiveSupport::TestCase
  
  def setup
    DatabaseCleaner.start
  end
  
  def teardown
    DatabaseCleaner.clean
  end
end
