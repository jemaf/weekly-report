WeeklyReport::Application.configure do
  config.cache_classes = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = false

  config.assets.compress = true

  config.assets.compile = false

  config.assets.digest = true

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.active_record.auto_explain_threshold_in_seconds = 0.5

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
