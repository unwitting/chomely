# frozen_string_literal: true

Clearance.configure do |config|
  config.routes = false
  config.rotate_csrf_on_sign_in = true
  config.redirect_url = "/"
end
