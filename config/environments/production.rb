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
    :address              => '<smtp address>',
    :port                 => 587,
    :domain               => '<your domain>',
    :user_name            => '<username>',
    :password             => '<password>',
    :authentication       => 'plain',
    :enable_starttls_auto => true  
  }
end
