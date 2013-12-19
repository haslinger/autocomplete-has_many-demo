Demo::Application.configure do
  config.eager_load = true
  config.assets.js_compressor = :uglifier

  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.compress = true
  config.assets.compile = false
  config.assets.digest = true
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify

  # HAS: 20131213: for Heroku deployment
  config.hobo.read_only_file_system=true
end
