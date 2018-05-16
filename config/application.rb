require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
ENV['RAILS_ADMIN_THEME'] = 'rollincode'

module RailsProjects
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    ActionMailer::Base.smtp_settings={
    :address =>'smtp.gmail.com',
    :domain => 'mail.google.com',
    :port => '587',
    :user_name => "letranhbao96@gmail.com",
    :password => "19960412ab",
    :authentication => 'login',
    :enable_strattls_auto =>true


  }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.app_generators.scaffold_controller = :scaffold_controller
  end
end
