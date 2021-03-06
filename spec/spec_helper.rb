require 'rspec/autorun'
ENV['environment'] ||= 'test'
# - RSpec adds ./lib to the $LOAD_PATH
require 'active_fedora'
require 'active_fedora/crosswalks'
#Resque.inline = Rails.env.test?
ROOT_PATH = File.dirname(__FILE__)
DUMMY_PATH = File.join(ROOT_PATH,"dummies")
FIXTURE_PATH = File.join(ROOT_PATH, "fixtures")

# Support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
# Dummies
Dir["#{File.dirname(__FILE__)}/dummies/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
end