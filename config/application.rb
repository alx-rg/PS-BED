require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Petstore
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.autoload_paths += %W(#{config.root}/lib)

    config.generators do |g|
      g.template_engine :erb
      g.test_framework  :test_unit, fixture: false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
    end

    config.action_view.field_error_proc = Proc.new { |html_tag, instance|
      "<div class=\"field_with_errors\">#{html_tag}</div>".html_safe
    }

    config.action_view.sanitized_allowed_tags = ['strong', 'em', 'a']
    config.action_view.sanitized_allowed_attributes = ['href', 'title']

  end
end
