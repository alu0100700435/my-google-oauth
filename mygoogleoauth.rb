require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'omniauth-oauth2'
require 'omniauth-google-oauth2'
require 'pry'

require 'erubis'
require 'pp'

set :erb, :escape_html => true

use OmniAuth::Builder do
  config = YAML.load_file 'config/config.yml'
  provider :google_oauth2, config['identifier'], config['secret']
end

enable :sessions
set :session_secret, '*&(^#234a)'

get '/' do
  irb: 'login'
end


get '/auth/:name/callback' do
  @auth = request.env['omniauth.auth']
  @nombre = @auth['info'].name
  @email = @auth['info'].email
  @imagen = @auth['info'].image
 
  erb :index
end
