WeeklyReport::Application.configure do
  config.cache_classes = false
  config.whiny_nils = true
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.action_dispatch.best_standards_support = :builtin
  config.active_record.mass_assignment_sanitizer = :strict
  config.active_record.auto_explain_threshold_in_seconds = 0.5
  config.assets.compress = false
  config.assets.debug = true

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => APP_CONFIG['email']['address'],
    :port                 => APP_CONFIG['email']['port'],
    :domain               => APP_CONFIG['email']['domain'],
    :user_name            => APP_CONFIG['email']['user_name'],
    :password             => APP_CONFIG['email']['password'],
    :authentication       => APP_CONFIG['email']['authentication'],
    :enable_starttls_auto => true  
  }
end