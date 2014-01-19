require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
#require 'capybara/rspec'


Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)


RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"

	def login_with_oauth(service = :twitter)
		get "/auth/#{service}/callback"
	end

	def login_success(service = :twitter)
		visit "/auth/#{service}/callback"
	end

	def login_failure
		visit "/auth/failure"
	end

	# Capybara
	config.include Capybara::DSL

end

