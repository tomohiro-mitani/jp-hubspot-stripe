require 'sinatra/activerecord'

host = 'localhost'
if ENV['APP_ENV'] == 'production'
	host = "/cloudsql/#{ENV['INSTANCE_CONNECTION_NAME']}"
end

set :database, {
  adapter: 'postgresql',
	host: host,
  port: 5432,
  username: ENV['DB_USER'],
	password: ENV['DB_PASSWORD'],
	database: ENV['DB_DATABASE'],
}
