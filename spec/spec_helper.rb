require 'simplecov'
require "test_notifier/runner/rspec"
SimpleCov.start 'rails'
require 'spork'

require File.expand_path("../../config/environment", __FILE__)  
# Dir[File.dirname(__FILE__) + "/spec/support/**/*.rb"].each {|f| require f}

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/*/.rb")].each {|f| require f}

require 'support/controller_macros'

Spork.prefork do
  ENV["RAILS_ENV"] ||= "test"
  require File.expand_path("../../config/environment", __FILE__)
  require "rspec/rails"

  RSpec.configure do |config|
    config.use_transactional_fixtures = false
    config.mock_with :rspec
    config.color_enabled = true
    config.formatter = 'documentation'
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.include FactoryGirl::Syntax::Methods
    config.include Devise::TestHelpers, :type => :controller
    config.extend ControllerMacros, :type => :controller
  end

end