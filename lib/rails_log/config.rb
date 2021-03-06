require 'active_support/configurable'

module RailsLog
  include ActiveSupport::Configurable

  configure do |config|
    config.ignore_exception = [
      'ActionController::UnknownFormat'
    ]
    config.admin_class = 'AdminController'
    config.api_class = 'ApiController'
    config.quiet_logs = true
    config.intercept_not_found = true
    config.debug = false
  end

end
