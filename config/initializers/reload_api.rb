if Rails.env == "development"
  api_reloader = ActiveSupport::FileUpdateChecker.new(Dir["lib/**/*"]) do
    Rails.application.reload_routes! # or do something better here
  end

  ActionDispatch::Callbacks.to_prepare do
    api_reloader.execute_if_updated
  end
end
