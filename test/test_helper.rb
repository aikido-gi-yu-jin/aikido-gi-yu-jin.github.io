require "middleman"
require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require "minitest/capybara"

require 'pry'

class AcceptanceTest < Minitest::Test
  include Capybara::DSL
  include Capybara::Assertions

  def teardown
    Capybara.reset_session!
    Capybara.use_default_driver
  end
end

Capybara.app = Middleman::Application.server.inst do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..'))
  set :environment, :test
  set :show_exceptions, true
end


