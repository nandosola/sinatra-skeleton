# encoding: utf-8
require 'sinatra/base'
require 'json'

module Pasilla
  class Example < Sinatra::Base

    use Rack::Session::Pool
    set :root, APP_ROOT
    set :views, File.join(root, 'views')
    set :static_cache_control, [:public, {:max_age => 604800}]  # one week
    # settings.*
    set :lang, CONFIG['lang']
    set :public_folder => File.join(root, 'public')

    before do
      @service = request.host+':'+request.port.to_s
    end

    Dir[File.join(APP_ROOT, 'helpers/*.rb')].each {|r| load r}

  end
end

require_relative 'models/init'
require_relative 'routes/init'
