# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module PbHiringRuby
  class Application < Rails::Application
    config.load_defaults 7.0
    config.generators do |generate|
      generate.orm :active_record, primary_key_type: :uuid
      generate.helper false
      generate.assets = false
      generate.test_framework = :rspec
      generate.stylesheets false
    end
  end
end
