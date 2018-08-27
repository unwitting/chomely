Clearance.configure do |config|
  config.routes = false
  config.rotate_csrf_on_sign_in = true
  config.mailer_sender = "reply@example.com"
end
