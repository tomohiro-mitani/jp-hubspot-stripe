
# I18n for the money gem
I18n.enforce_available_locales = false

# sessions
set :sessions, :expire_after => 2592000
set :session_store, Rack::Session::Pool
set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
